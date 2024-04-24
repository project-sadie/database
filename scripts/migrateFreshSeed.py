import pymysql.cursors
import os
import glob
from bootstrap import *

reset_database()
migrate()
seed()