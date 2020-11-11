ld = Actor.create({name: "Leonardo DiCaprio"})
kw = Actor.create({name: "Kate Winslet"})
bc = Actor.create({name: "Benedict Cumberbatch"})
rm = Actor.create({name: "Rachel McAdams"})
ll = Actor.create({name: "Lindsey Lohan"})
rg = Actor.create({name: "Ryan Gosling"})
sc = Actor.create({name: "Steve Carrell"})

titanic = Movie.create({name: "Titanic", year: 1997, released: true, director: "James Cameron", rating: 9, description: "Love story aboard the Ship of Dreams on its final voyage."})
revenant = Movie.create({name: "The Revenant", year: 2016, released: true, director: "Alejandro González Iñárritu", rating: 9, description: "Story of overcoming death with the sole purpose of righteous revenge."})
doctor_strange = Movie.create({name: "Doctor Strange", year: 2017, released: true, director: "Scott Derrickson", rating: 8, description: "Marvel. Supernatural abilities in the physical world granted via mind mastery"})
mean_girls = Movie.create({name: "Mean Girls", year: 2004, released: true, director: "Mark Waters", rating: 8, description: "Stop trying to make fetch happen!"})
notebook = Movie.create({name: "The Notebook", year: 2004, released: true, director: "Nick Cassavetes", rating: 8, description: "Sweet love story that made me cry like a baby."})
csl = Movie.create({name: "Crazy Stupid Love", year: 2011, released: true, director: "Glenn Ficarra", rating: 9, description: "Hilarious romantic comedy."})

Role.create({name: "Jack Dawson", movie_id: titanic.id, actor_id: ld.id})
Role.create({name: "Rose DeWitt Bukater", movie_id: titanic.id, actor_id: kw.id})
Role.create({name: "Hugh Glass", movie_id: revenant.id, actor_id: ld.id})
Role.create({name: "Stephen Strange", movie_id: doctor_strange.id, actor_id: bc.id})
Role.create({name: "Christine Palmer", movie_id: doctor_strange.id, actor_id: rm.id})
Role.create({name: "Regina George", movie_id: mean_girls.id, actor_id: rm.id})
Role.create({name: "Cady Heron", movie_id: mean_girls.id, actor_id: ll.id})
Role.create({name: "Noah Calhoun", movie_id: notebook.id, actor_id: rg.id})
Role.create({name: "Allison Hamilton", movie_id: notebook.id, actor_id: rm.id})
Role.create({name: "Jacob Palmer", movie_id: csl.id, actor_id: rg.id})
Role.create({name: "Cal Weaver", movie_id: csl.id, actor_id: sc.id})



