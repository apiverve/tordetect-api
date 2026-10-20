from setuptools import setup, find_packages

setup(
    name='apiverve_tornodedetector',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Tor Node Detector is a Tor exit node checker API: send any IP address and it tells you whether that IP belongs to an active Tor exit node, so you can identify traffic originating from the anonymity network.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/tordetect?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
