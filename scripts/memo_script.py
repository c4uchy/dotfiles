#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import os, linecache, shutil, datetime 

FILE_PATH = '/home/k0/Dropbox/Memo/note.md'

def check_last_row():
    if os.path.isfile(FILE_PATH):
        last_row_num = sum(1 for i in open(FILE_PATH))
        last_row_text = linecache.getline(FILE_PATH, last_row_num)
        if not last_row_text == '\n':
            with open(FILE_PATH, 'a', newline='') as f:
                f.write('\n')
    else:
        print("File not found")
        exit(1)

def check_last_date():
    now_date_datetime = datetime.datetime.now()
    now_date_string = now_date_datetime.strftime('%Y-%m-%d')

    file_date_datetime = datetime.datetime.fromtimestamp(os.stat(FILE_PATH).st_mtime)
    file_date_string = file_date_datetime.strftime('%Y-%m-%d')
    if now_date_string != file_date_string:
        shutil.copy2(FILE_PATH, FILE_PATH.replace('.md', '_yesterday.md'))
        check_last_row()
        with open(FILE_PATH, 'a') as f:
            f.write('***')
            f.write('\n')
            f.write('\n')
            f.write('## <u>*' + now_date_string + '*</u>')

if __name__ == '__main__':
    check_last_date()
