#My House

This is a site to post upcoming church events and include the group that the event belongs to. A person can sign-up, sign in and create event, create a group as well as look at any events and any groups.

 
##Motivation

This site caters to the Seventh-day Adventist church which is a world wide church that has various institutions such as schools, universities, hospitals, ministries. Our denomination is in need of a site where events can be posted from any place in the world. A user can sign-up and see upcoming events.


###<https://sheltered-everglades-23829.herokuapp.com/> 


###Technologies used:
* Ruby on Rails 
* Bootstrap
* HTML
* CSS
* SaSS
* Heroku hosting

##Deployment: 

I used Heroku to deploy My House. 

##Design:

I used RESTful routes to build a full CRUD web application.


##Planning Process:


###<https://trello.com/b/OMjbkud4/my-house/>
Relationships:

```
Events has
  
  has_many :users
  has_many :group
  belongs_to :user
```

```
Groups has

  has_many :users
  has_many :events
  belongs_to :user
```

RESTful Routes:

```
Prefix Verb   URI Pattern                Controller#Action
      logout DELETE /logout(.:format)          sessions#destroy
    sessions POST   /sessions(.:format)        sessions#create
new_sessions GET    /sessions/new(.:format)    sessions#new
             DELETE /sessions(.:format)        sessions#destroy
       users POST   /users(.:format)           users#create
    new_user GET    /users/new(.:format)       users#new
      events GET    /events(.:format)          events#index
             POST   /events(.:format)          events#create
   new_event GET    /events/new(.:format)      events#new
  edit_event GET    /events/:id/edit(.:format) events#edit
       event GET    /events/:id(.:format)      events#show
             PATCH  /events/:id(.:format)      events#update
             PUT    /events/:id(.:format)      events#update
             DELETE /events/:id(.:format)      events#destroy
      groups GET    /groups(.:format)          groups#index
             POST   /groups(.:format)          groups#create
   new_group GET    /groups/new(.:format)      groups#new
  edit_group GET    /groups/:id/edit(.:format) groups#edit
       group GET    /groups/:id(.:format)      groups#show
             PATCH  /groups/:id(.:format)      groups#update
             PUT    /groups/:id(.:format)      groups#update
             DELETE /groups/:id(.:format)      groups#destroy
        root GET    /                          events#index
       login GET    /login(.:format)           sessions#new


```

###Error:
 ```
   def destroy
      @event = Event.find(params[:id])
      @event.destroy
      redirect_to events_path
    end
  end
  
 ```
I had difficulty executing the destroy function. I had to include params[:id] to fix the problem.

###Unresolved Issue:
The Delete feature works but has the a bug that does not allow it to work every time.









