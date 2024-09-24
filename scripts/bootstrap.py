import pymysql.cursors
from dotenv import load_dotenv
import os
import glob

if os.path.isfile(".env") == False:
    print("Missing .env file")
    raise SystemExit

if os.path.exists("migrations") == False:
    print("Run scripts from the root directory")
    raise SystemExit

load_dotenv()

def get_connection (database = ''):
    return pymysql.connect(
        host = os.environ.get("DB_HOST"),
        user = os.environ.get("DB_USER"),
        password = os.environ.get("DB_PASS"),
        database = database,
        cursorclass=pymysql.cursors.DictCursor)

def reset_database():
    connection = get_connection()

    with connection:
        with connection.cursor() as cursor:
            cursor.execute(f'DROP DATABASE IF EXISTS {os.environ.get("DB_NAME")};')
            cursor.execute(f'CREATE DATABASE {os.environ.get("DB_NAME")};')

        connection.commit()

def migrate():
    connection = get_connection(os.environ.get("DB_NAME"))

    with connection:
        with connection.cursor() as cursor:
            for f in sorted(glob.glob("migrations/*.sql")):
                print(f)
                with open(f, "r") as infile:
                    query = infile.read()
                    cursor.execute(query)

        connection.commit()

def seed():
    connection = get_connection(os.environ.get("DB_NAME"))
    with connection.cursor() as cursor:
        for f in sorted(glob.glob("seeders/*.sql")):
            print(f)
            with open(f, "r") as infile:
                query = infile.read()
                cursor.execute(query)

    connection.commit()
