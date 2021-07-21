![BrightCoders Logo](img/logo-bc.png)

# Nombre del Proyecto
Let Me Help You

## Problematica que atiende
According to a study carried out by the OMS, 93% of the countries in the world has been disturbances in essential mental health services, even paralyzing them. This study covers 130 countries of which 70% have adopted telemedicine and teletherapy as a solution to the problem.

## Propuesta de solución
In order to help people to have a first approach with a professional about mental health, a platform will be created where they can have access to a catalog of specialists, this through a chat or video call.

Online psychology platform. For patients seeking psychological care and therapy. For psychologists, a management tool for your consulting.

## Definición de requerimientos del MVP

- A organization require a web site in which a user can take meetings with psychologists remotly.

The web Application must fulfill the following functions:
### Requerimientos funcionales
- All users need to have a profile:
    - Full name: the user's full name.
    - User name: a short name to identify the user.
    - Password: an alphanumeric field for user password.
    - Age: user's date of birth.
    - Gender: Male, Female, No-Binary, Other.

- All psychologists need to have a profile:
    - Full name: the psychologist's full name.
    - User name: a short name to identify the psychologist.
    - Password: an alphanumeric field for psychologist password.
    - Age: psychologist's date of birth.
    - Gender: Male, Female, No-Binary, Other.
    - Description: a short text describing how the psychologist works
    - Professional register: Verification document (Support record as a professional).
    - Specialty: Branch of psychology in wich the psychologist specializes.
   
- Home:
    - Navegation Bar (when the user is not logged in):
        - Logo
        - Login/Register button.
        - Psychologist.
        - Prices.
        - FAQ.

    - Navegation Bar (when the user is logged in):
        - Logo
        - Litle welcome message
        - My profile.
        - Psychologist.
        - Prices.
        - FAQ.
        - Logout.
    
    - Principal Section:
        - Small description.
        - Button with a direct access to the psychologist list.
    
    - Footer with social media and contanct information.

- Psychologist list:
    - A list of all availible psychologists.
    - With a short description (Full name and Specialty).
    - Schedule appointment button.

- Psychologist profile page:
    - Name.
    - Short Description.
    - Attention Area (Specialty).
    - Professional register.
    - Schedule appointment button.

- User Profile:
    - All user's personal information
    - The user can edit their personal information
    
- FAQ Page
    - Description of how the online meetings works
    - A list of Frequent questions and their respective Answers to help the user understand how Let Me Help You works

- Prices page
    - Section with a price of subscription per month
    - Payment method

- Chat (when the user is logged in)
    - A floating button
    - Contains all active chats with psychologists
    
### Requerimientos no funcionales

- Quality
    - Reponsive web site
    - Based on Rubocop
    - Unit Tests
    - Rubycritic score: at least 90 in the App folder and at least 65 in the tests folder
    - Use SandiMeter to analyze the code and use the result to make improvements
    - Works in all major browsers: Edge, Chrome, Safari and Firefox 
- Deployment
    - Configuration of a web server (heroku or similar) for the automatic deployment of app updates
   
- Frontend
    - CSS: freedom to use any framework or library, preferably SASS
        - For example you can use Bootsrap together with bootstrap_form for your forms 

## Diseño del MVP

Incluyan en [esta carpeta](/design) su propuesta de diseño

## Recursos

- [Minimum Viable Product](https://www.agilealliance.org/glossary/mvp/#q=~(infinite~false~filters~(tags~(~'mvp))~searchTerm~'~sort~false~sortDirection~'asc~page~1))
- [Minimum Viable Product (MVP)](https://www.productplan.com/glossary/minimum-viable-product/)
- [Design Thinking](https://www.interaction-design.org/literature/topics/design-thinking)
- [El proceso de pensamiento de diseño](https://www.youtube.com/watch?v=_r0VX-aU_T8)
- [Metodología Design Thinking. Ejemplos](https://www.youtube.com/watch?v=_ul3wfKss58) 
- [Design Thinking ejemplo sencillo](https://www.youtube.com/watch?v=_H33tA2-j0s)
