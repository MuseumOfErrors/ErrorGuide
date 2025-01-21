# Museum of Errors

Museumoferrors.com is an open-source site collecting data on Pokémon error cards.  
It gives new collectors a place to start, non-error collectors a way to learn more about their finds, and experienced collectors a platform to share resources.

## Project Overview
- Educate collectors on Pokémon error cards.
- Provide resources and guides.
- Create a reliable, editable platform for sharing information.

## High-Level Outline
### Home Page
- Welcome message and introduction
- Navigation bar

### About Page
- Project goals and motivations

### Error Guide Page
- Comprehensive info on different error card types
- Placeholder diagram showing errors and relationships

### Navigation Bar
- Links to Home, About, and Error Guide

### Future Enhancements
- GitHub Actions for CI/CD
- Selenium tests for eBay searches
- Additional pages as the project grows

## Development Setup
1. **Ruby Version Caution**  
   Use Ruby < 3.3 (Ruby 3.3+ can cause logger errors with Jekyll).
2. **Install Jekyll and Bundler**  
   ```sh
   gem install jekyll bundler
   ```
3. **Clone the Repository**  
   ```sh
   git clone https://github.com/MuseumOfErrors/ErrorGuide
   cd ErrorGuide
   ```
4. **Install Dependencies**  
   ```sh
   bundle install
   ```

## Running Tasks

You can use the `Makefile` to simplify running common tasks:

- **Serve the Site Locally to Debug or run a Manual Test**:
  ```sh
  make serve
  ```

- **Run Tests**:
  ```sh
  make test
  ```

- **Build the Site**:
  ```sh
  make build
  ```

## Viewing the Site

After running `make serve`, open your browser at [http://127.0.0.1:4000](http://127.0.0.1:4000)