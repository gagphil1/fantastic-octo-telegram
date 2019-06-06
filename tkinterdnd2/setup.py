from setuptools import setup, find_packages

setup(
    name='tkinterdnd2',
    version='0.3.0',
    url='http://tkinterdnd.sourceforge.net',
    author='klappnase',
    description='TkinterDnD2 is a python wrapper for George Petasis'' tkDnD Tk extension version 2',
    packages=find_packages(),    
    install_requires=['tk >= 3.6', 'tkdnd >= 2.9'],
)