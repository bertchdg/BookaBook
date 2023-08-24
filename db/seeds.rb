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
Book.create!(
  title: "Harry Potter",
  author: "JK Rowling",
  user: nadja,
  genre: "fantasy",
  address: "25 Alexanderplatz, Berlin",
  Synopsis: "Follow the young wizard Harry Potter as he embarks on a magical journey to learn about his true heritage and battle the dark forces threatening his world."
)
Book.create!(
  title: "Klara and the Sun",
  author: "Kazuo Ishiguro",
  user: irene,
  genre: "scifi",
  address: "12 Friedrichstraße, Berlin",
  Synopsis: "Join Klara, an Artificial Friend, as she navigates a world where advanced technology blurs the lines between human and machine, leading her to question the nature of her existence."
)
Book.create!(
  title: "The Never-Ending Story",
  author: "Michael Ende",
  user: nadja,
  genre: "fantasy",
  address: "9 Potsdamer Platz, Berlin",
  Synopsis: "Dive into the enchanting tale of Bastian Balthazar Bux, a young boy who discovers a magical book that transports him to the realm of Fantastica, where he must play a role in saving the land."
)
Book.create!(
  title: "Tomorrow and Tomorrow and Tomorrow",
  author: "Gabrielle Zevin",
  user: irene,
  genre: "fiction",
  address: "8 Hackescher Markt, Berlin",
  Synopsis: "Explore the intertwining lives of characters across different time periods, as they grapple with love, loss, and the mysteries of existence, in this intricate narrative."
)
Book.create!(
  title: "To Kill a Mockingbird",
  author: "Harper Lee",
  user: nicole,
  genre: "fiction",
  address: "8 Hackescher Markt, Berlin",
  Synopsis: "Set in the racially charged atmosphere of the American South, this novel follows young Scout Finch as her father, lawyer Atticus Finch, defends a black man accused of raping a white woman."
)
Book.create!(
  title: "Frankenstein",
  author: "Mary Shelley",
  user: nadja,
  genre: "horror",
  address: "8 Hackescher Markt, Berlin",
  Synopsis: "Embark on a journey of scientific discovery and moral dilemma as Victor Frankenstein creates a creature from lifeless body parts, only to unleash a series of tragic events."
)
Book.create!(
  title: "Little Women",
  author: "Louisa May Alcott",
  user: brett,
  genre: "classics",
  address: "8 Hackescher Markt, Berlin",
  Synopsis: "Join the March sisters—Meg, Jo, Beth, and Amy—as they navigate the challenges of growing up, pursuing their dreams, and supporting each other through life's ups and downs."
)
Book.create!(
  title: "To the Lighthouse",
  author: "Virginia Woolf",
  user: nicole,
  genre: "fiction",
  address: "8 Hackescher Markt, Berlin",
  Synopsis: "Immerse yourself in the inner thoughts and emotions of the Ramsay family and their guests as they spend time on the Isle of Skye and contemplate life, art, and mortality."
)
Book.create!(
  title: "The Color Purple",
  author: "Alice Walker",
  user: irene,
  genre: "contemporary",
  address: "18 Karl-Marx-Straße, Berlin",
  Synopsis: "Experience the journey of Celie, a young African-American woman, as she finds her voice, resilience, and sense of self-worth in the face of abuse and adversity."
)
Book.create!(
  title: "The Handmaid's Tale",
  author: "Margaret Atwood",
  user: irene,
  genre: "dystopian",
  address: "26 Altenbraker Straße, Berlin",
  Synopsis: "Enter the chilling dystopian world of Gilead, where women's rights are stripped away and Offred, a Handmaid, must navigate the oppressive society while searching for freedom and hope."
)
Book.create!(
  title: "Beloved",
  author: "Toni Morrison",
  user: irene,
  genre: "fiction",
  address: "11 Berlin Wall Memorial, Berlin",
  Synopsis: "Delve into the haunting story of Sethe, a former slave, and the powerful impact of her past actions on her relationships and the lives of her family members, including the haunting presence of her deceased daughter, Beloved."
)
Book.create!(
  title: "The Secret Garden",
  author: "Frances Hodgson Burnett",
  user: nicole,
  genre: "children's",
  address: "16 Tiergarten Park, Berlin",
  Synopsis: "Follow the journey of Mary Lennox, a spoiled and neglected girl, as she discovers a hidden garden and forms new connections that bring healing and transformation to her life."
)
Book.create!(
  title: "The Bell Jar",
  author: "Sylvia Plath",
  user: brett,
  genre: "fiction",
  address: "26 Emserstraße, Berlin",
  Synopsis: "Experience the introspective journey of Esther Greenwood as she navigates the challenges of mental illness, societal expectations, and her pursuit of identity in the 1950s."
)
Book.create!(
  title: "The Joy Luck Club",
  author: "Amy Tan",
  user: brett,
  genre: "contemporary",
  address: "12 Altenbraker Straße, Berlin",
  Synopsis: "Dive into the lives of four Chinese immigrant women and their American-born daughters as they share stories, struggles, and cultural clashes while forming connections that bridge generations."
)
Book.create!(
  title: "The Hunger Games",
  author: "Suzanne Collins",
  user: nicole,
  genre: "dystopian",
  address: "2 Altenbraker Straße, Berlin",
  Synopsis: "Enter the gripping world of Panem, where Katniss Everdeen volunteers to participate in the brutal Hunger Games in order to protect her younger sister, and becomes a symbol of rebellion."
)
Book.create!(
  title: "Gone Girl",
  author: "Gillian Flynn",
  user: irene,
  genre: "thriller",
  address: "8 Weserstraße, Berlin",
  Synopsis: "Unravel the mystery behind the disappearance of Amy Dunne and the subsequent media frenzy, as Nick Dunne becomes the prime suspect in a thrilling tale of deceit, manipulation, and unexpected twists."
)
Book.create!(
  title: "The Night Circus",
  author: "Erin Morgenstern",
  user: brett,
  genre: "fantasy",
  address: "13 Hermanstrasse, Berlin",
  Synopsis: "Step into the enchanting world of the Night Circus, a mysterious and magical competition between two illusionists, Celia and Marco, whose lives are bound by a dangerous game of creativity and love."
)
Book.create!(
  title: "Circe",
  author: "Madeline Miller",
  user: brett,
  genre: "fiction",
  address: "90 Fritz-Reuter-Allee, Berlin",
  Synopsis: "Experience the myth of Circe, the sorceress from Greek mythology, as she discovers her powers, navigates the world of gods and mortals, and ultimately transforms into a powerful figure in her own right."
)

puts "Done 🪄"

# Book.create!(title: "Meditations", author: "Marcus Aurelius", user: irene, genre: "philosophy")
# Book.create!(title: "Thus Spoke Zarathustra", author: "Friedrich Nietzsche", user: irene, genre: "philosophy")
# Book.create!(title: "The Republic", author: "Plato", user: irene, genre: "philosophy")
# Book.create!(title: "Beyond Good and Evil", author: "Friedrich Nietzsche", user: irene, genre: "philosophy")
# Book.create!(title: "Critique of Pure Reason", author: "Immanuel Kant", user: irene, genre: "philosophy")
# Book.create!(title: "The Art of War", author: "Sun Tzu", user: irene, genre: "philosophy")
# Book.create!(title: "Veinte poemas de amor y una canción desesperada", author: "Pablo Neruda", user: irene, genre: "poetry")
# Book.create!(title: "Cien sonetos de amor", author: "Pablo Neruda", user: irene, genre: "poetry")
# Book.create!(title: "Soledades, galerías y otros poemas", author: "Antonio Machado", user: irene, genre: "poetry")
# Book.create!(title: "Poeta en Nueva York", author: "Federico García Lorca", user: irene, genre: "poetry")
# Book.create!(title: "Poesía completa", author: "Julia de Burgos", user: irene, genre: "poetry")
