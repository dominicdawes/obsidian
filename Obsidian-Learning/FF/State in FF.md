Link: [Understanding State | FlutterFlow In 5 Minutes (youtube.com)](https://www.youtube.com/watch?v=te6rm7KHqvo)

In the editor `main.dart` cant be edited, state is controlled at the app, page, and component level. Each state has a type like (int, str, byte, func, etc...)

#### Example Overview
- **App state:** Time spent in current app session, user uploaded PDF
- **Page state:** Displaying a user's recently liked songs in a component, counter to display onboarding flow progress
- **Component state:** Counter to display onboarding flow progress (if it's a custom component)

![[Pasted image 20241009125157.png]]

### App State

- **Definition:** App state refers to the global data that affects the entire application. It's shared across all components and persists throughout the user's session.
- **Use Cases:**
    - **User authentication:** Storing information about the currently logged-in user.
    - **Theme preferences:** Remembering the user's preferred color scheme or font size.
    - **Language settings:** Keeping track of the user's chosen language.
    - **Persistent data:** Storing data that needs to be retained even after the app is closed, such as shopping cart items or user settings.
- **Real-world examples:**
	- **Time spent in current app session:** Store the start time in app state and update it periodically to calculate the total duration.
	- **User uploaded pdf:** Store the PDF file's path or URL in app state for easy access across different pages.

### Page State

- **Definition:** Represents the state specific to a particular page within the Flutter application. It's used to manage data that's relevant only to that page.
- **Examples:**
    - **Search results:** Storing the list of search results displayed on a search page.
    - **Shopping cart items:** Managing the items added to a user's shopping cart.
    - **Form data:** Storing the values entered by the user in a form.
- **Real-world examples:**
    - **Displaying a user's recently liked songs in a component:** Store the list of liked songs in page state and pass it to the component.
    - **Counter to display onboarding flow progress:** Store the current step of the onboarding process in page state and update it as the user progresses

### Component State

- **Definition:** Represents the state specific to a particular component within a Flutter page. It's used to manage data that's relevant only to that component.
- **Examples:**
    - **Dropdown menu options:** Storing the list of options available in a dropdown menu.
    - **Slider value:** Storing the current value of a slider.
    - **Text field input:** Storing the text entered by the user in a text field.
- **Real-world examples:**
    - **Counter to display onboarding flow progress:** Store the current step of the onboarding process in component state (if it's a custom component) and update it as the user progresses.