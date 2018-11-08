# README
Elevator Pitch:
An app to learn about Hawaiian Plants - uses, stories, names, and score points for helping save the ʻaina.

Tags:
java, android-development-kit, tsql, sql-server, azure, github, android, keras, tensorflow, vs-code, slack, pivotal-tracker, markdown, microsoft-sql-management-studio, gitkraken

## Inspiration
Our inspiration for this project was the lack of data on Hawaiian plants as well as our love for nature.  When we realized that many of the local plants across the islands had such rich stories, we wanted to learn more about their uses and everything else.  However, there was very little data on the local plants so we wanted to both help researchers preserve these plants for generations to come and create a platform that everybody can use easily to learn about the local plants.

## What it does
It is an application that takes advantage of crowd-sourcing techniques made popular by Pokémon Go, Ingress, and many other applications.  By gamify-ing finding plants and tracking them, this will help researchers by encouraging users to go learn more about these plants as well as try to identify them in the wild.  It uses machine learning models incorporated into an Android App which we hope to make cross platform in the future to scan plants with the camera and then identify them, assigning points to the user, and geotagging them and uploading them to a cloud Azure SQL database which then interacts with a desktop app allowing the researchers to generate reports on the locations and potential densities and numbers of these plants across our islands.

## How I built it
Our team built this using SQL, Java, and a host of other tools.  Through many hours of development and exploring different options, we were able to select the proper machine learning models, scrape photos of the plants from the internet to train the models, as well as build an index of local plants and their information.  By making this sync with a cloud database, we are able to access it from most any device allowing us to develop many different clients for any device which will allow external developers to make additional applications to either analyze research data we can compile and release or interact with our database to contribute to it expanding our data.

## Challenges I ran into
We had many troubles during development as most all of the environments and languages we worked with were new to us.  Android Java turned out to be a specialized java which does not contain many of the standard java libraries, however, the ones that it does are implemented differently which also caused some problems.  Forcing the Android Development Kit to include the proper library for the SQL Server driver to connect to the database was also a lot of trouble because I had to determine the proper driver versions to interact with the Azure SQL Server as well as the proper java versions (being different than standard java was hard to bridge) but after completing our database then worked properly.  We had to determine the exact version of Android java that matched the proper Java 10 version linking with the driver to fix this.  Afterwards we had difficulty training our machine learning model because there was very little data out there on the local plants making it difficult as we had to scrape many hundreds of photos and go through them by hand from both flickr and google using custom python code and their respective apis and afterwards comb through them by hand to select proper photos that will be good for training to raise our accuracy.  Last of all was similar to the driver, but instead was machine learning model porting difficulties between python, keras, and tensorflow, into Android Development Kit Java.

## Accomplishments that I'm proud of
We have a machine learning model which has a solid 95% accuracy of analyzing plants across our islands from the phone camera. We used a pre-trained model called MobileNet and we trained it for Hawaiian plants. We took that file and converted it to a .pb file that could be used with Tensorflow on android. We have successfully implemented the database connectivity to our android app. Our camera can take a picture and save that picture to the phone storage. We designed our app with scalability in mind for future growth.

## What I learned
Our team learned a lot about collaborative programming.  From communicating over slack and properly managing our github across different branches, merge conflicts, and many other commit issues we have grown both as individuals as well as a team using the various tools we interacted with.  Pivotal Tracker is our first time using project management software, incorporating our Agile development methods of Scrum, we were able to structure and complete our application.

## What's next for Plant Hawaii
We will implement the full database, with all 1400 Hawaiian plants and we will also retrain the plants that were not already there and they can adapt to the new species that get added. We will fully implement crowdsourcing, in which users can send in reports to other users who can verify that it is correct. The pictures that they submit will help to train machine learning. We also will design the GUI to include logins for users and admin users. We will geolocate pictures as they are taken and the geotagged pictures will be sent to DLNR when the user gets internet connectivity. We designed this with the idea in mind that the user will have limited internet access as they are in remote locations using the application in their work. 

Git Repository Link: https://github.com/HACC2018/PlantHawaii
Mockup Link: https://projects.invisionapp.com/share/Q8OXMWDDHSG#/329364382
Video Demo: https://youtu.be/RjOcw-n8cDk
