puts "Cleaning the Database 🧼"
sleep(1)
User.destroy_all
Book.destroy_all

puts "Creating Users 🙋🏻‍♀️ 🧙🏼‍♂️ 🤷🏻‍♀️ 👩🏻‍🦰"
sleep(1)
brett = User.create!(email: "brett@bookabook.com", password: "password", username: "brettbook")
nadja = User.create!(email: "nadja@bookabook.com", password: "password", username: "nadjabook")
irene = User.create!(email: "irene@bookabook.com", password: "password", username: "irenekichan")
nicole = User.create!(email: "nicole@bookabook.com", password: "password", username: "nicolebook")

puts "Creating Books 📖 📚 📇"
sleep(1)
Book.create!(title: "Harry Potter", author: "JK Rowling", user: nadja, genre: "fantasy", address: "25 Alexanderplatz, Berlin")
Book.create!(title: "Klara and the Sun", author: "Kazuo Ishiguro", user: irene, genre: "scifi", address: "12 Friedrichstraße, Berlin")
Book.create!(title: "The Never-Ending Story", author: "Michael Ende", user: nadja, genre: "fantasy", address: "9 Potsdamer Platz, Berlin")
Book.create!(title: "Tomorrow and Tomorrow and Tomorrow", author: "Gabrielle Zevin", user: irene, genre: "fiction", address: "8 Hackescher Markt, Berlin")
Book.create!(title: "To Kill a Mockingbird", author: "Harper Lee", user: nicole, genre: "fiction", address: "15 Brandenburg Gate, Berlin")
Book.create!(title: "Frankenstein", author: "Mary Shelley", user: nadja, genre: "horror", address: "21 Checkpoint Charlie, Berlin")
Book.create!(title: "Little Women", author: "Louisa May Alcott", user: brett, genre: "classics", address: "10 Gendarmenmarkt, Berlin")
Book.create!(title: "To the Lighthouse", author: "Virginia Woolf", user: nicole, genre: "literary fiction", address: "6 Reichstag Building, Berlin")
Book.create!(title: "The Color Purple", author: "Alice Walker", user: irene, genre: "contemporary", address: "18 Museum Island, Berlin")
Book.create!(title: "The Handmaid's Tale", author: "Margaret Atwood", user: irene, genre: "dystopian", address: "14 Berlin TV Tower, Berlin")
Book.create!(title: "Beloved", author: "Toni Morrison", user: irene, genre: "historical fiction", address: "11 Berlin Wall Memorial, Berlin")
Book.create!(title: "The Secret Garden", author: "Frances Hodgson Burnett", user: nicole, genre: "children's", address: "16 Tiergarten Park, Berlin")
Book.create!(title: "The Bell Jar", author: "Sylvia Plath", user: brett, genre: "autobiographical fiction", address: "19 East Side Gallery, Berlin")
Book.create!(title: "The Joy Luck Club", author: "Amy Tan", user: brett, genre: "contemporary", address: "7 Charlottenburg Palace, Berlin")
Book.create!(title: "The Hunger Games", author: "Suzanne Collins", user: nicole, genre: "dystopian", address: "17 Berlin Cathedral, Berlin")
Book.create!(title: "Gone Girl", author: "Gillian Flynn", user: irene, genre: "thriller", address: "20 Victory Column, Berlin")
Book.create!(title: "The Night Circus", author: "Erin Morgenstern", user: brett, genre: "fantasy", address: "13 Berlin Hauptbahnhof, Berlin")
Book.create!(title: "Circe", author: "Madeline Miller", user: brett, genre: "mythological fiction", address: "22 Kurfürstendamm, Berlin")

puts "Done 🪄"
