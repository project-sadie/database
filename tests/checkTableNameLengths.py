import glob
import sys

maxTableLength = 36
errors = 0

for filepath in glob.iglob('migrations/*.sql'):
    cleanFileName = filepath.replace('migrations/', '').replace('.sql', '')[4:]

    if len(cleanFileName) > maxTableLength:
        print(f'{cleanFileName} is {str(len(cleanFileName))} characters long, too long for {str(maxTableLength)}')
        errors += 1

sys.exit(errors)

