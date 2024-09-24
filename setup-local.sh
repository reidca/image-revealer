#!/bin/bash

# Create the main project directory
mkdir -p image-revealer
cd image-revealer

# Create app directory and its subdirectories
mkdir -p app/{static,templates}
touch app/__init__.py app/models.py app/views.py app/utils.py

# Create infrastructure directory and its subdirectories
mkdir -p infrastructure/{cloudformation,scripts}
touch infrastructure/cloudformation/image-revealer-stack.yaml
touch infrastructure/scripts/{deploy.sh,update-stack.sh}

# Create tests directory
mkdir -p tests
touch tests/test_models.py tests/test_views.py

# Create Elastic Beanstalk configuration directories
mkdir -p .ebextensions
touch .ebextensions/01_flask.config

mkdir -p .elasticbeanstalk
touch .elasticbeanstalk/config.yml

# Create root level files
touch requirements.txt application.py .gitignore README.md Dockerfile

# Populate .gitignore with some common Python ignores
cat << EOF > .gitignore
# Python
__pycache__/
*.py[cod]
*$py.class
*.so
.Python
env/
build/
develop-eggs/
dist/
downloads/
eggs/
.eggs/
lib/
lib64/
parts/
sdist/
var/
*.egg-info/
.installed.cfg
*.egg

# Elastic Beanstalk Files
.elasticbeanstalk/*
!.elasticbeanstalk/*.cfg.yml
!.elasticbeanstalk/*.global.yml

# IDEs
.vscode/
.idea/

# OS generated files
.DS_Store
.DS_Store?
._*
.Spotlight-V100
.Trashes
ehthumbs.db
Thumbs.db
EOF

# Populate README.md with a basic structure
cat << EOF > README.md
# Image Revealer Application

## Description
[Provide a brief description of your project]

## Setup
[Instructions on how to set up the project locally]

## Deployment
[Instructions on how to deploy the application]

## Usage
[Instructions on how to use the application]

## Contributing
[Guidelines for contributing to the project]

## License
[Specify the license for your project]
EOF

echo "Project structure created successfully!"