# Vue Lists

## Setup

* clone the repo and run `bundle install`
* run `bundle exec rake db:setup` 
* start the rails server and open the root route. You should see some gnarley json.

## Instructions

### Component Setup
* Create a vue-robot-list component via in components/robot_list.js via Vue.component("vue-robot-list", {})
* Add a `<vue-robot-list></vue-robot-list>` element to app/views/pages/home.html.erb
* Create the app/views/vue_templates directory
* make the file app/views/vue_templates/_robot_list.html
* add <%= render partial: "vue_templates/robot_list" %> to the bottom of app/views/pages/home.html.erb
* in _robot_list.html, add a script element with the type of type="text/template" and the id of robot-list-template.
* Inside the script tag, type "I'm the robot-list component"
* In your browser's JS console, confirm that your template is available by running document.getElementById("robot-list-template")
* Add a template key to our component and set it to nonsense. template: "sldkfjlksdjfkld" Refresh the browser and note the error.
* Use yesterday's lesson to point the vue-robot-list component at the template. "I'm the robot-list component" should appear on the screen

### v-model
* Add a data method to our component that returns an object like this: `{ searchText: "hi i'm search text" }`. 
* Display `searchText` in your component via `{{ searchText }}`
* Check out the `v-model` #text [docs](http://vuejs.org/guide/forms.html#Basics-Usage)
* Add an `<input>` tag with the `v-model` set to the `searchText` variable.
* Type something into `searchText` and watch the browser update.

### Passing data in from Rails
* Install the [gon gem](https://github.com/gazay/gon)
* In `home_controller.rb`, set `gon.robots = @robots`
* Check out `gon.robots` in the JavaScript Console. Verify that it's a giant-ass array.
* In our component's data object, add a `robots` key and set it to `gon.robots`.
* Verify that `robots` is available to our component in the vue dev tools

### v-for
* Open a browser tab for the [list rendering docs](http://vuejs.org/guide/list.html#v-for)
* Add a dumb repeater to our template. Something like: `<div v-for="robot in robots">hi</div>`. Verify that "hi" appears 200 times in the page.
* Replace the dumb repeater above with an unordered list that prints the robot's name, specialty, owner, and serial_number.

### filterBy
* Update your repeater to look like this: `v-for="robot in robots | filterBy searchText`.

## Bonus Instructions

### Fake avatars
* Use [ROBOHASH](https://robohash.org) to create an avatar for your robots

### Hide The Filter
* Hide the filter by default and add a "show filter" button that reveals the filter.
* When the filter is showing, add a "hide filter" button that hides the filter.
