# MediumRare

[Live Demo](https://medium-rare-stories.herokuapp.com/#/)

MediumRare is a clone of the online publishing platform Medium where users can post stories, opinion pieces, or articles about topics that matter to them.

# Technologies
+ Ruby on Rails
+ Redux
+ React
+ jQuery
+ JavaScript
+ PostgreSQL
+ CSS

# Features
### Log in/Sign up
A single modal displays both the log in and sign up forms, and there is a demo log in for users who want to try the site without creating an account. 
![Modal for signing up](https://github.com/VivDeG/MediumRare/blob/master/app/assets/images/sign_up_modal.png)

The modal conditionally displays either the log in or sign up form based on what button was clicked. The "Log In" and "Sign Up"/"Get Started" buttons have an onClick event attribute that is a callback to the openModal() method with the form type as an argument. The modal does not display if there is no form type, and if the user clicks outside of the modal or on the "x" in the corner, the modal will close.
``` js
// greeting.jsx
  <button className="login-button"
    onClick={() => openModal('Log In')}>Log In</button>
  <button className="signup-button"
    onClick={() => openModal('Sign Up')}>Get Started</button>

// modal.jsx
const Modal = ({modal, closeModal}) => {
  if (!modal) {
    return null;
  }

  let component;
  switch (modal) {
    case 'Log In':
      component = <LoginFormContainer />;
      break;
    case 'Sign Up':
      component = <SignupFormContainer />;
      break;
    default:
      return null;
  }
  return (
    <div className="modal-background" onClick={closeModal}>
      <div className="modal-child" onClick={e => e.stopPropagation()}>
        {component}
      </div>
    </div>
  )
}
```
  
### Stories
Users who are logged in can create a new story by navigating to their own profile page and clicking the "New Story" button. They can update their published stories from the story blob on their profile page and the story show page. They can delete stories from both their profile page and on the story edit form. Both users who are and are not logged in can view user profiles, read stories, and have a feed populated with posts from all other users.
![User's feed](https://github.com/VivDeG/MediumRare/blob/master/app/assets/images/home_page.png)
