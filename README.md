## Setup Instructions

1. Install python in windows 
	Windows don't include Python by default, but you can easily install it (along with the pip3 tool) from python.org:
    Download the required installer:
        Go to https://www.python.org/downloads/ or https://www.python.org/downloads/windows/
        Select the Download Python 3.7.1 button (the exact minor version number may differ).
    Install Python by double-clicking on the downloaded file and following the installation prompts
    Be sure to check the box labeled "Add Python to PATH" or else go to advanced settings and set path in user variable
	C:\Users\Vishant\AppData\Local\Programs\Python\Python37-32\Scripts\;C:\Users\Vishant\AppData\Local\Programs\Python\Python37-32\;C:\Program Files\Intel\WiFi\bin\;C:\Program Files\Common Files\Intel\WirelessCommon\
	check version:
	py -3 -V 
	python --version
	
2. Install virtualenv
-> pip install virtualenvwrapper-win

3. Create a virtual environment for your project
-> cd wherever/you/want/to/put/your/code
-> mkvirtualenv venv --no-site-packages

4. Activate virtual environment
-> workon venv

5. Install git in your machine and clone the repository else download the repository from below link
-> git clone https://github.com/codewithvishu/DigitalLibrary.git

6. Install required packages
-> cd DigitalLibrary
-> pip install -r requirements.txt

7. Apply migration into database
-> python manage.py migrate

8. Create an user
-> python manage.py createsuperuser
	Username (leave blank to use 'vishu_jain'): admin
	Email address: admin@admin.com
	Password:admin
	Password (again):admin
	The password is too similar to the username.
	This password is too short. It must contain at least 8 characters.
	This password is too common.
	Bypass password validation and create user anyway? [y/N]: y
	Superuser created successfully.


## Running Application

-> workon env
-> python manage.py runserver 0.0.0.0:8000

Open your favorite browser and open the link http://localhost:8000/catalog/

For admin related task: Login with the user you have created in previous steps
http://localhost:8000/admin/
