#!/usr/bin/env python

#rename/copy and jpeg to folder.jpg for compatibility with media players

import os
import shutil

path='/path/to/music/collection/'
for root, dir, files in os.walk(path):
    for file in files:
        if file.endswith('.jpg') or file.endswith('.JPG'):
            if not os.access(root+os.sep+'folder.jpg', os.F_OK):
                print root+os.sep+file+' renamed to folder.jpg'
                shutil.copyfile(root+os.sep+file, root+os.sep+'folder.jpg')
                #os.rename(root+os.sep+file, root+os.sep+'folder.jpg')
            else:
                print root+os.sep+'folder.jpg exists'
