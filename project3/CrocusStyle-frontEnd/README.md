# Crocus:

 # Description :

Crocus application is used to spread knowledge about plant species and ways to care for them, and to educate people about plants, and share the interest in the plant. Where you can post a picture of the plant with an overview and allow other people to comment on it, so  Let's share about how to care for plants.

# Important Links:

1. <a href="https://git.generalassemb.ly/ameenalfifi/Crocus"> Other Repo </a>
2. Deployed API
3. Deployed Client

# Planning Story:
first plan We choose idea for web app and draw Application idea (ERD , class diagram) then how access to front end, back end Via (React,Server,database). Finally, we decide to work on both the front end and the back end. First, we were working on the back end by establishing the models and controllers and the relationships, then we moved to the front end by dividing the components between us.



# User Stories:
1. As a user I want to sign in/up
2. As a user I want to Create a new Post
3. As a user I want to add a new Comments
4. As a user I want to Read a single Post
5. As a user I want to Read a single Comment for all Post
6. As a user I want to Delete a Post I own
7. As a user I want to Delete a Comment I own
8. As a user I want to Edit a Comment I own
9. As a user I want to Edit a Post I own
10. As a guest I want to be able to sign-up to use the site
11. As a guest I want to be able to Browse Posts in the site

# Technologies Used:
1. HTML/CSS
2. Bootstrap
3. Javascript
4. Jwt
5. React
6. Axios
7. GitHub



# Unsolved Problems:
1. Still need to work on admin account to allow the admin account to manage all posts and comments for all users.



# process and problem-solving strategy:
planning to create an educational application about plants, and allow users to add posts and add comments on the post. Identify the entities and the relationships between them. draw the ERD and the wire frame, then build the backend then the front end.

- Step1: When add Post with comment  ::
- Step2: We faced an error when we add comment and post
- Step3: We solve this issue by writing the code in the PostView.js and postRow.js , App.js:
- PostView.js
  (`</div> :  <PostRow post={this.props}  profiles={this.props.profiles} ></PostRow> } 
    <Card.Title className="center1"> 
    <button className="main-btnn" onClick={this.gitDetails}>Comments</button> 
     <CommentList  post={this.props.post}  profiles={this.props.profiles}/>
`)
- postRow.js
  (`<CommentList  post={this.props.post}  profiles={this.props.profiles}/>`)
 
- App.js
(`  <Route path="/post"
    component={() => isAuth ? <Post profiles={this.state.profiles} posts={this.state.posts} loadPost={this.loadPost}/>: <PostWithoutLogin/>
     } ></Route>`)

# Set up and installation instructions for front end application:

 ## React:
 1. NodeJS and NPM
- NodeJS is the platform needed for the ReactJS development. Checkout our NodeJS Environment Setup.

 2. Using the create-react-app command and Create the Root Folder:
- (`C:\Users\username\Desktop>mkdir reactApp`)
- (`C:\Users\username\Desktop>cd reactApp`)
- (`C:\Users\username\Desktop\reactApp>npm init`)
- (`npm install -g create-react-app `)
- (`nmp start // to run  dev server`)

 3. install React and react dom
-  (`C:\Users\username\Desktop\reactApp>npm install react react-dom --save`)

4. run this command to install Axios:   
  - npm install axios
5. Making a GET Request
  - axios.get(`https://jsonplaceholder.typicode.com/users`)

6. include React Bootstrap for style
  - (`npm install react-bootstrap bootstrap`)

7. react-router-dom package by running the following commands:
  - npm install react-router-dom
  -  (`<Router> </Router> `)
  -  (`<Link to="/">`)
  -  (`<Route exact path="/" component={App} />`)
  



# Images:

# App Screenshot:

 <img src="public/media/screen1.png"> 
 <img src="public/media/screen2.png"> 
 <img src="public/media/screen3.png"> 
 <img src="public/media/screen4.png"> 



# Wireframe:

<img src="public/media/1.png"> 
<img src="public/media/2.png"> 
<img src="public/media/3.png"> 
<img src="public/media/4.png"> 
<img src="public/media/5.png"> 
<img src="public/media/6.png"> 
<img src="public/media/7.png"> 





