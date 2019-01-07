from __future__ import unicode_literals

from setuptools import setup

setup(
    name="epubbuilder",
    version="0.2.1",
    author="Anders Pearson",
    author_email="anders@columbia.edu",
    url="https://github.com/ccnmtl/epubbuilder",
    description="epub builder library",
    long_description="forked from python-epub-builder",
    install_requires=[
        "future",
        "lxml",
        "Genshi",
        "nose"
    ],
    scripts=[],
    license="BSD",
    platforms=["any"],
    zip_safe=False,
    packages=['epubbuilder'],
    test_suite='nose.collector',
    include_package_data=True,
)
