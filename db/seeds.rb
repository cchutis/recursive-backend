# Destroy all previous instances
Project.destroy_all
User.destroy_all
Task.destroy_all

# Instantiate New Data

# User - First Name, Last Name, Email, Password, Dark Mode(Bool)
dean = User.create(first_name: 'Constantine', last_name: 'Chutis', email: 'dean@dean.com', password: '123', dark_mode: false) 

# Project - Name, Language, Due Date (Date), User.id
native = Project.create(name: 'Recursive Mobile App', language: 'React Native', due_date: '20190729', photo: 'https://appinventiv.com/blog/wp-content/uploads/2018/12/React-Native-vs-Native-App-Development.jpg', user_id: dean.id )
crypto = Project.create(name: 'Cryptocurrency Rails App', language: 'Ruby', due_date: '20190725', photo: 'https://en.bitcoinwiki.org/upload/en/images/thumb/6/62/BiteMyCoin-Cryptocurrency.png/500px-BiteMyCoin-Cryptocurrency.png', user_id: dean.id )
orbs = Project.create(name: 'Orbs//OS', language: 'Javascript', due_date: '20190912', photo: 'https://i.ibb.co/0FsLbkv/orbs.jpg', user_id: dean.id )
vr = Project.create(name: 'VR Game Project', language: 'C#', due_date: '20190728', photo: 'https://opto.ca/sites/default/files/virtual_headset_man_medium_istock-618761378.jpg', user_id: dean.id )
rust = Project.create(name: 'Learn Rust', language: 'Rust', due_date: '20190413', photo: 'https://i.udemycdn.com/course/750x422/624252_3505_3.jpg', user_id: dean.id )

# Tasks - Title, Description, Difficulty (Num), Due Date (Date), Project.id

# Native App Tasks
Task.create(title: 'Set up Github Repo', description: 'Go onto Github, set up a new repo, git init the project, and make initial add/commit with a git push.', difficulty: 3, due_date: '20190729', project_id: native.id)
Task.create(title: 'Create react-native-app', description: 'Go to React Native website, follow instructions on installing react native via npm tools, and launch initial page using a mobile device via Expo app.', difficulty: 5, due_date: '20190729', project_id: native.id)
Task.create(title: 'Create component heiarchy', description: 'Draw out components and containers to anticipate app layout and user flow.', difficulty: 7, due_date: '20190729', project_id: native.id)
Task.create(title: 'Create landing page', description: 'Start working on initial landing page for React Native users when first visiting the app home page.', difficulty: 9, due_date: '20190729', project_id: native.id)
Task.create(title: 'Commit changes at end of day', description: 'Dont forget to commit often when finishing up features, but MAKE SURE to commit and push by end of day, so the leads can make sure you did work today :) ', difficulty: 2, due_date: '20190729', project_id: native.id)
# Cryptochambr App Tasks
Task.create(title: 'Create new Rails install', description: 'Set up brand new rails installation.', difficulty: 3, due_date: '20190728', project_id: crypto.id)
Task.create(title: 'Generate Models Contollers and Views', description: 'Use rails g to generate models, controllers and views.', difficulty: 5, due_date: '20190728', project_id: crypto.id)
Task.create(title: 'Write out routing', description: 'Write out your routes!', difficulty: 7, due_date: '20190728', project_id: crypto.id)
Task.create(title: 'Seed Database', description: 'Generate some initial seeding data to play around with.', difficulty: 9, due_date: '20190729', project_id: crypto.id)
# OrbsOS App Tasks
Task.create(title: 'Download Electron and Install', description: 'Visit Electron website to install Electron from work.', difficulty: 3, due_date: '20190729', project_id: orbs.id)
Task.create(title: 'Read Documentation', description: 'Read through the documentation to understand how it all functions and works.', difficulty: 5, due_date: '20190729', project_id: orbs.id)
Task.create(title: 'Launch new project via NPM', description: 'Create a project via npm.', difficulty: 7, due_date: '20190729', project_id: orbs.id)
Task.create(title: 'Set up draggable Div elements', description: 'Work with adding some Code that generates Div elements and drag functionality event listeners.', difficulty: 9, due_date: '20190729', project_id: orbs.id)
Task.create(title: 'Create user Accounts', description: 'Create some user accounts to play around with instances of the OS.', difficulty: 2, due_date: '20190729', project_id: orbs.id)
# Unity VR App Tasks
Task.create(title: 'Set up Unity3D Project', description: 'Open up unity and create a new 3D project.', difficulty: 3, due_date: '20190729', project_id: vr.id)
Task.create(title: 'Create new Scene and import Standard Assets', description: 'Create a new scene and import the Unity Standard Asset package.', difficulty: 5, due_date: '20190729', project_id: vr.id)
Task.create(title: 'Install OVR Assets', description: 'Go to Unity Store and import in the OVR package to set up new VR controls.', difficulty: 7, due_date: '20190729', project_id: vr.id)
Task.create(title: 'Launch and Test Scene', description: 'Launch a new scene and put on the VR headset to test out blank scene.', difficulty: 9, due_date: '20190729', project_id: vr.id)
# Learn Rust Tasks
Task.create(title: 'Sign up for FreeCodeCamp', description: 'Visit FreeCodeCamp website and sign up for an account.', difficulty: 3, due_date: '20190729', project_id: rust.id)
Task.create(title: 'Learn Rust Basics', description: 'Start Rust Beginners course.', difficulty: 5, due_date: '20190729', project_id: rust.id)
Task.create(title: 'Make Simple App using Rust', description: 'Make a simple app with the new Rust knowledge.', difficulty: 7, due_date: '20190729', project_id: rust.id)