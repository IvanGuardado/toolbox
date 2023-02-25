# auth0

auth0 is a service that allows to manager users in a easy way. It provides login/signup forms, including social login and SSO options so you don't have to expend time on it. It's perfect for those projects where you need to have a identification step because the integration is incredibly fast and better than you could do by yourself.

### Installation
It's very easy to install auth0 in Rails. You just have to include a couple of gems, create an initializer and create a controller that will deal with the auth0 flow. You can see a basic configuration in [this commit](https://github.com/IvanGuardado/toolbox/commit/404946cf5e46f2a9cda70918e80277d63ab356d4).

### Connecting with local data
Usually, in your application you'll want to have a table with your users in order to associate other resources. For example, in a blog, you want to link a blog post or a comment with a user entity. This is a [basic example](https://github.com/IvanGuardado/toolbox/commit/004f3c091fbaf2a5e052ef6cbf27024a5945b4bc) of how you could do this.

### Management API
Additionally, you'll probably want to get or update users (or other resources) programatically. For this purpose, Auth0 expose the Managemente API, where you can do any action you can do in the UI panel via API. It's important to note that you need to create a new Application (Applications > Applications) with the type Machine to Machine (M2M) and link it to the System API (Auth0 Managemente API) and grant the permissions you need to manage via API. [Here](https://github.com/IvanGuardado/toolbox/commit/1cc88544006df42050a556b3b8275a3e8a159cb8) you can see an example to make this kind of API calls.

### User roles
As far as I could understand, the user roles are just available when you are creating an API instead of a web application. I could be wrong here because it sounds very weird so I'd have to investigate it further in case I need it in a future project.
