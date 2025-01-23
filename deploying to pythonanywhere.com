Creating virtual environment
 Connecting it to github(only for first time)
Pushing it to github
Deploy to pythonanywhere.com



Creating virtual environment
In terminal python project folder
python3 -m venv venv
Mac: source venv/bin/activate    windows: .\venv\Scripts\activate
pip list
pip install flask
pip freeze > requirements.txt
Create a file named “.gitignore” in the root of the folder.
Add “venv/” to gitignore file.

 Connecting it to github(only for first time)

ssh-keygen -t ed25519 -C "your_email@example.com"
Install ssh-agent client for windows.

Mac:           cat ~/.ssh/id_ed25519.pub
Windows :  type %userprofile%\.ssh\id_ed25519.pub
ssh-add ~/.ssh/id_ed25519
clip < ~/.ssh/id_ed25519.pub

Testing the connection:
ssh -T git@github.com

Pushing it to github
Go to the project folder in the terminal/command prompt.
Do git init
git add .
git commit -m "Initial commit"
Create an empty repository in github.com and copy the SSH url.
git remote add origin your_repo_SSH_url
git push -u origin main

Deploying to pythonanywhere.com


Login to pythonanywhere.com and open a bash console.

Create a SSH key and connect to github(step 2).
Git clone your_repo_ssh_url
 cd repo_name
Type  `pwd` to get the path of the repo and save it in a notepad for further use.

Go back to the Web section in PythonAnywhere.
Create a new web app and select Manual Configuration 

Choose your project folder in the code section.




