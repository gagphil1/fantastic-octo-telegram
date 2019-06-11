from setuptools import setup, find_packages
import shutil
import os

os.mkdir('demo')
shutil.copy("demo_canvas.py", "demo")
shutil.copy("demo_files_and_text.py","demo")
shutil.copy("demo_megawidgets.py", "demo")
shutil.copy("demo_simple_text.py", "demo")

shutil.move('demo', 'TkinterDnD2')

setup(
    name='TkinterDnD2',
    version='0.3.0',
    url='http://tkinterdnd.sourceforge.net',
    author='klappnase',
    description='TkinterDnD2 is a python wrapper for George Petasis'' tkDnD Tk extension version 2',
    packages=find_packages(),    
)