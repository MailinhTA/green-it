-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : dim. 08 déc. 2024 à 12:53
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `db_movies`
--

-- --------------------------------------------------------

--
-- Structure de la table `movie_db`
--

CREATE TABLE `movie_db` (
  `movie_id` varchar(8) DEFAULT NULL,
  `movie_name` varchar(54) DEFAULT NULL,
  `year` varchar(4) DEFAULT NULL,
  `runtime` varchar(7) DEFAULT NULL,
  `genre` varchar(28) DEFAULT NULL,
  `ratings` varchar(6) DEFAULT NULL,
  `description` varchar(238) DEFAULT NULL,
  `director` varchar(43) DEFAULT NULL,
  `image` varchar(300) DEFAULT NULL
) ENGINE=InnoDB  

--
-- Déchargement des données de la table `movie_db`
--

INSERT INTO `movie_db` (`movie_id`, `movie_name`, `year`, `runtime`, `genre`, `ratings`, `description`, `director`, `image`) VALUES
('2', 'Pulp Fiction', '1994', '154 min', 'Crime, Drama', '8.9', 'The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.', 'Quentin Tarantino', 'https://m.media-amazon.com/images/M/MV5BYTViYTE3ZGQtNDBlMC00ZTAyLTkyODMtZGRiZDg0MjA2YThkXkEyXkFqcGc@._V1_SX300.jpg'),
('3', 'The Godfather', '1972', '175 min', 'Crime, Drama', '9.2', 'The aging patriarch of an organized crime dynasty in postwar New York City transfers control of his clandestine empire to his reluctant youngest son.', 'Francis Ford Coppola', 'https://m.media-amazon.com/images/M/MV5BYTJkNGQyZDgtZDQ0NC00MDM0LWEzZWQtYzUzZDEwMDljZWNjXkEyXkFqcGc@._V1_SX300.jpg'),
('4', 'Se7en', '1995', '127 min', 'Crime, Drama, Mystery', '8.6', 'Two detectives, a rookie and a veteran, hunt a serial killer who uses the seven deadly sins as his motives.', 'David Fincher', 'https://m.media-amazon.com/images/M/MV5BY2IzNzMxZjctZjUxZi00YzAxLTk3ZjMtODFjODdhMDU5NDM1XkEyXkFqcGc@._V1_SX300.jpg'),
('5', 'Batman Begins', '2005', '140 min', 'Action, Crime, Drama', '8.2', 'After training with his mentor, Batman begins his fight to free crime-ridden Gotham City from corruption.', 'Christopher Nolan', 'https://m.media-amazon.com/images/M/MV5BODIyMDdhNTgtNDlmOC00MjUxLWE2NDItODA5MTdkNzY3ZTdhXkEyXkFqcGc@._V1_SX300.jpg'),
('6', 'The Silence of the Lambs', '1991', '118 min', 'Crime, Drama, Thriller', '8.6', 'A young F.B.I. cadet must receive the help of an incarcerated and manipulative cannibal killer to help catch another serial killer, a madman who skins his victims.', 'Jonathan Demme', 'https://m.media-amazon.com/images/M/MV5BNDdhOGJhYzctYzYwZC00YmI2LWI0MjctYjg4ODdlMDExYjBlXkEyXkFqcGc@._V1_SX300.jpg'),
('7', 'The Wolf of Wall Street', '2013', '180 min', 'Biography, Comedy, Crime', '8.2', 'Based on the true story of Jordan Belfort, from his rise to a wealthy stock-broker living the high life to his fall involving crime, corruption and the federal government.', 'Martin Scorsese', 'https://m.media-amazon.com/images/M/MV5BMjIxMjgxNTk0MF5BMl5BanBnXkFtZTgwNjIyOTg2MDE@._V1_SX300.jpg'),
('8', 'The Departed', '2006', '151 min', 'Crime, Drama, Thriller', '8.5', 'An undercover cop and a mole in the police attempt to identify each other while infiltrating an Irish gang in South Boston.', 'Martin Scorsese', 'https://m.media-amazon.com/images/M/MV5BMTI1MTY2OTIxNV5BMl5BanBnXkFtZTYwNjQ4NjY3._V1_SX300.jpg'),
('9', 'The Green Mile', '1999', '189 min', 'Crime, Drama, Fantasy', '8.6', 'The lives of guards on Death Row are affected by one of their charges: a black man accused of child murder and rape, yet who has a mysterious gift.', 'Frank Darabont', 'https://m.media-amazon.com/images/M/MV5BMTUxMzQyNjA5MF5BMl5BanBnXkFtZTYwOTU2NTY3._V1_SX300.jpg'),
('10', 'Joker', '2019', '122 min', 'Crime, Drama, Thriller', '8.4', 'A mentally troubled stand-up comedian embarks on a downward spiral that leads to the creation of an iconic villain.', 'Todd Phillips', 'https://m.media-amazon.com/images/M/MV5BNzY3OWQ5NDktNWQ2OC00ZjdlLThkMmItMDhhNDk3NTFiZGU4XkEyXkFqcGc@._V1_SX300.jpg'),
('11', 'The Shining', '1980', '146 min', 'Drama, Horror', '8.4', 'A family heads to an isolated hotel for the winter where a sinister presence influences the father into violence, while his psychic son sees horrific forebodings from both past and future.', 'Stanley Kubrick', 'https://m.media-amazon.com/images/M/MV5BNmM5ZThhY2ItOGRjOS00NzZiLWEwYTItNDgyMjFkOTgxMmRiXkEyXkFqcGc@._V1_SX300.jpg'),
('12', 'Alien', '1979', '117 min', 'Horror, Sci-Fi', '8.5', 'The crew of a commercial spacecraft encounter a deadly lifeform after investigating an unknown transmission.', 'Ridley Scott', 'https://m.media-amazon.com/images/M/MV5BN2NhMDk2MmEtZDQzOC00MmY5LThhYzAtMDdjZGFjOGZjMjdjXkEyXkFqcGc@._V1_SX300.jpg'),
('13', 'I Am Legend', '2007', '101 min', 'Action, Drama, Horror', '7.2', 'Years after a plague kills most of humanity and transforms the rest into monsters, the sole survivor in New York City struggles valiantly to find a cure.', 'Francis Lawrence', 'https://m.media-amazon.com/images/M/MV5BMGE1OWZkZmItNmVhMC00YzAxLTgxOTctNjg3NWExM2RmOWJkXkEyXkFqcGc@._V1_SX300.jpg'),
('14', 'Psycho', '1960', '109 min', 'Horror, Mystery, Thriller', '8.5', 'A Phoenix secretary embezzles $40,000 from her employer\'s client, goes on the run and checks into a remote motel run by a young man under the domination of his mother.', 'Alfred Hitchcock', 'https://m.media-amazon.com/images/M/MV5BYjZhMzFiZjItODA3ZC00MmRhLWIzMGYtMmVjOWUwYTA3MTRjXkEyXkFqcGc@._V1_SX300.jpg'),
('15', 'World War Z', '2013', '116 min', 'Action, Adventure, Horror', '7.0', 'Former United Nations employee Gerry Lane traverses the world in a race against time to stop a zombie pandemic that is toppling armies and governments and threatens to destroy humanity itself.', 'Marc Forster', 'https://m.media-amazon.com/images/M/MV5BODg3ZTM2YWQtZDE5Ny00NGNiLTkzYjgtYWVlYjNkOTg5NDI1XkEyXkFqcGc@._V1_SX300.jpg'),
('16', 'American Psycho', '2000', '102 min', 'Crime, Drama, Horror', '7.6', 'A wealthy New York City investment banking executive, Patrick Bateman, hides his alternate psychopathic ego from his co-workers and friends as he delves deeper into his violent, hedonistic fantasies.', 'Mary Harron', 'https://m.media-amazon.com/images/M/MV5BNzBjM2I5ZjUtNmIzNy00OGNkLWIwZDMtOTAwYWUwMzA2YjdlXkEyXkFqcGc@._V1_SX300.jpg'),
('17', 'Get Out', '2017', '104 min', 'Horror, Mystery, Thriller', '7.7', 'A young African-American visits his white girlfriend\'s parents for the weekend, where his simmering uneasiness about their reception of him eventually reaches a boiling point.', 'Jordan Peele', 'https://m.media-amazon.com/images/M/MV5BMjUxMDQwNjcyNl5BMl5BanBnXkFtZTgwNzcwMzc0MTI@._V1_SX300.jpg'),
('18', 'Zombieland', '2009', '88 min', 'Action, Comedy, Horror', '7.6', 'A shy student trying to reach his family in Ohio, a gun-toting bruiser in search of the last Twinkie and a pair of sisters striving to get to an amusement park join forces in a trek across a zombie-filled America.', 'Ruben Fleischer', 'https://m.media-amazon.com/images/M/MV5BMTU5MDg0NTQ1N15BMl5BanBnXkFtZTcwMjA4Mjg3Mg@@._V1_SX300.jpg'),
('19', 'Shaun of the Dead', '2004', '99 min', 'Comedy, Horror', '7.9', 'The uneventful, aimless lives of a London electronics salesman and his layabout roommate are disrupted by the zombie apocalypse.', 'Edgar Wright', 'https://m.media-amazon.com/images/M/MV5BNzNjZGE4YTUtOWU3OC00Mzg2LThjNWItMzUwYzEwMDgxYmVjXkEyXkFqcGc@._V1_SX300.jpg'),
('20', 'It', '2017', '135 min', 'Horror', '7.3', 'In the summer of 1989, a group of bullied kids band together to destroy a shape-shifting monster, which disguises itself as a clown and preys on the children of Derry, their small Maine town.', 'Andy Muschietti', 'https://m.media-amazon.com/images/M/MV5BZGZmOTZjNzUtOTE4OS00OGM3LWJiNGEtZjk4Yzg2M2Q1YzYxXkEyXkFqcGc@._V1_SX300.jpg'),
('21', 'Schindler\'s List', '1993', '195 min', 'Biography, Drama, History', '9.0', 'In German-occupied Poland during World War II, industrialist Oskar Schindler gradually becomes concerned for his Jewish workforce after witnessing their persecution by the Nazis.', 'Steven Spielberg', 'https://m.media-amazon.com/images/M/MV5BNjM1ZDQxYWUtMzQyZS00MTE1LWJmZGYtNGUyNTdlYjM3ZmVmXkEyXkFqcGc@._V1_SX300.jpg'),
('22', 'Braveheart', '1995', '178 min', 'Biography, Drama, History', '8.4', 'Scottish warrior William Wallace leads his countrymen in a rebellion to free his homeland from the tyranny of King Edward I of England.', 'Mel Gibson', 'https://m.media-amazon.com/images/M/MV5BNGMxZDBhNGQtYTZlNi00N2UzLWI4NDEtNmUzNWM2NTdmZDA0XkEyXkFqcGc@._V1_SX300.jpg'),
('23', '12 Years a Slave', '2013', '134 min', 'Biography, Drama, History', '8.1', 'In the antebellum United States, Solomon Northup, a free black man from upstate New York, is abducted and sold into slavery.', 'Steve McQueen', 'https://m.media-amazon.com/images/M/MV5BMjExMTEzODkyN15BMl5BanBnXkFtZTcwNTU4NTc4OQ@@._V1_SX300.jpg'),
('24', 'The King\'s Speech', '2010', '118 min', 'Biography, Drama, History', '8.0', 'The story of King George VI, his impromptu ascension to the throne of the British Empire in 1936, and the speech therapist who helped the unsure monarch overcome his stammer.', 'Tom Hooper', 'https://m.media-amazon.com/images/M/MV5BMzU5MjEwMTg2Nl5BMl5BanBnXkFtZTcwNzM3MTYxNA@@._V1_SX300.jpg'),
('25', 'Dunkirk', '2017', '106 min', 'Action, Drama, History', '7.8', 'Allied soldiers from Belgium, the British Commonwealth and Empire, and France are surrounded by the German Army and evacuated during a fierce battle in World War II.', 'Christopher Nolan', 'https://m.media-amazon.com/images/M/MV5BZWU5ZjJkNTQtMzQwOS00ZGE4LWJkMWUtMGQ5YjdiM2FhYmRhXkEyXkFqcGc@._V1_SX300.jpg'),
('26', 'Hacksaw Ridge', '2016', '139 min', 'Biography, Drama, History', '8.1', 'World War II American Army Medic Desmond T. Doss, who served during the Battle of Okinawa, refuses to kill people and becomes the first man in American history to receive the Medal of Honor without firing a shot.', 'Mel Gibson', 'https://m.media-amazon.com/images/M/MV5BMjQ1NjM3MTUxNV5BMl5BanBnXkFtZTgwMDc5MTY5OTE@._V1_SX300.jpg'),
('27', 'The Big Short', '2015', '130 min', 'Biography, Comedy, Drama', '7.8', 'In 2006-2007 a group of investors bet against the United States mortgage market. In their research, they discover how flawed and corrupt the market is.', 'Adam McKay', 'https://m.media-amazon.com/images/M/MV5BZDZkNDQ3YjktYjBlZC00YTY1LTgxOGYtY2RhMWFhZmNkZGY3XkEyXkFqcGc@._V1_SX300.jpg'),
('28', 'Black Hawk Down', '2001', '144 min', 'Action, Drama, History', '7.7', 'The story of 160 elite U.S. soldiers who dropped into Mogadishu in October 1993 to capture two top lieutenants of a renegade warlord, but found themselves in a desperate battle with a large force of heavily armed Somalis.', 'Ridley Scott', 'https://m.media-amazon.com/images/M/MV5BYTM3YTQ1M2MtNDEyNC00NzRlLWFmOTgtYjBhNDg2ODNjNTU0XkEyXkFqcGc@._V1_SX300.jpg'),
('29', 'Hotel Rwanda', '2004', '121 min', 'Biography, Drama, History', '8.1', 'Paul Rusesabagina, a hotel manager, houses over a thousand Tutsi refugees during their struggle against the Hutu militia in Rwanda, Africa.', 'Terry George', 'https://m.media-amazon.com/images/M/MV5BY2FmMWRmZmQtN2IzMS00OGVmLWFmNjktMTM0YWQzODcwYTEwXkEyXkFqcGc@._V1_SX300.jpg'),
('30', 'Downfall', '2004', '156 min', 'Biography, Drama, History', '8.2', 'Traudl Junge, the final secretary for Adolf Hitler, tells of the Nazi dictator\'s final days in his Berlin bunker at the end of WWII.', 'Oliver Hirschbiegel', 'https://m.media-amazon.com/images/M/MV5BMTU0NTU5NTAyMl5BMl5BanBnXkFtZTYwNzYwMDg2._V1_SX300.jpg'),
('31', 'Forrest Gump', '1994', '142 min', 'Drama, Romance', '8.8', 'The presidencies of Kennedy and Johnson, the Vietnam War, the Watergate scandal and other historical events unfold from the perspective of an Alabama man with an IQ of 75, whose only desire is to be reunited with his childhood sweetheart.', 'Robert Zemeckis', 'https://m.media-amazon.com/images/M/MV5BNDYwNzVjMTItZmU5YS00YjQ5LTljYjgtMjY2NDVmYWMyNWFmXkEyXkFqcGc@._V1_SX300.jpg'),
('32', 'Titanic', '1997', '194 min', 'Drama, Romance', '7.9', 'A seventeen-year-old aristocrat falls in love with a kind but poor artist aboard the luxurious, ill-fated R.M.S. Titanic.', 'James Cameron', 'https://m.media-amazon.com/images/M/MV5BYzYyN2FiZmUtYWYzMy00MzViLWJkZTMtOGY1ZjgzNWMwN2YxXkEyXkFqcGc@._V1_SX300.jpg'),
('33', 'Eternal Sunshine of the Spotless Mind', '2004', '108 min', 'Drama, Romance, Sci-Fi', '8.3', 'When their relationship turns sour, a couple undergoes a medical procedure to have each other erased from their memories for ever.', 'Michel Gondry', 'https://m.media-amazon.com/images/M/MV5BMTY4NzcwODg3Nl5BMl5BanBnXkFtZTcwNTEwOTMyMw@@._V1_SX300.jpg'),
('34', 'Good Will Hunting', '1997', '126 min', 'Drama, Romance', '8.3', 'Will Hunting, a janitor at M.I.T., has a gift for mathematics, but needs help from a psychologist to find direction in his life.', 'Gus Van Sant', 'https://m.media-amazon.com/images/M/MV5BNDdjZGQ5YzEtNTc2My00Mjc0LWFlMTctYzkwMzZlNzdiZWYzXkEyXkFqcGc@._V1_SX300.jpg'),
('35', 'Slumdog Millionaire', '2008', '120 min', 'Crime, Drama, Romance', '8.0', 'A Mumbai teenager reflects on his life after being accused of cheating on the Indian version of \"Who Wants to be a Millionaire?\".', 'Danny Boyle, \nLoveleen Tandan', 'https://m.media-amazon.com/images/M/MV5BMTE5ZTRkYWEtZmU5MC00NDJjLTk3NmUtZGJlYTM2MmQ3NTJkXkEyXkFqcGc@._V1_SX300.jpg'),
('36', 'Amélie', '2001', '122 min', 'Comedy, Romance', '8.3', 'Amélie is an innocent and naive girl in Paris with her own sense of justice. She decides to help those around her and, along the way, discovers love.', 'Jean-Pierre Jeunet', 'https://m.media-amazon.com/images/M/MV5BOTNmYzY0MWQtZGZmNy00Y2Y4LWFmMDQtMTZjYTdiYzEwZGQ2XkEyXkFqcGc@._V1_SX300.jpg'),
('37', 'Silver Linings Playbook', '2012', '122 min', 'Comedy, Drama, Romance', '7.7', 'After a stint in a mental institution, former teacher Pat Solitano moves back in with his parents and tries to reconcile with his ex-wife. Things get more challenging when Pat meets Tiffany, a mysterious girl with problems of her own.', 'David O. Russell', 'https://m.media-amazon.com/images/M/MV5BMTM2MTI5NzA3MF5BMl5BanBnXkFtZTcwODExNTc0OA@@._V1_SX300.jpg'),
('38', 'Life Is Beautiful', '1997', '116 min', 'Comedy, Drama, Romance', '8.6', 'When an open-minded Jewish waiter and his son become victims of the Holocaust, he uses a perfect mixture of will, humor, and imagination to protect his son from the dangers around their camp.', 'Roberto Benigni', 'https://m.media-amazon.com/images/M/MV5BZTBhOGYzZjQtYzE0Mi00MGIwLWE0MWYtNzMxNTM2OTFkM2NjXkEyXkFqcGc@._V1_SX300.jpg'),
('39', 'Shrek', '2001', '90 min', 'Animation, Adventure, Comedy', '7.9', 'A mean lord exiles fairytale creatures to the swamp of a grumpy ogre, who must go on a quest and rescue a princess for the lord in order to get his land back.', 'Andrew Adamson, \nVicky Jenson', 'https://m.media-amazon.com/images/M/MV5BN2FkMTRkNTUtYTI0NC00ZjI4LWI5MzUtMDFmOGY0NmU2OGY1XkEyXkFqcGc@._V1_SX300.jpg'),
('40', 'The Curious Case of Benjamin Button', '2008', '166 min', 'Drama, Fantasy, Romance', '7.8', 'Tells the story of Benjamin Button, a man who starts aging backwards with consequences.', 'David Fincher', 'https://m.media-amazon.com/images/M/MV5BYjIyNDExOWItM2Y4ZC00NmY3LWFlN2ItYTJlZDQ1NTJlZTUwXkEyXkFqcGc@._V1_SX300.jpg'),
('41', 'Sunset Blvd.', '1950', '110 min', 'Drama, Film-Noir', '8.4', 'A screenwriter develops a dangerous relationship with a faded film star determined to make a triumphant return.', 'Billy Wilder', 'N/A'),
('42', 'The Third Man', '1949', '104 min', 'Film-Noir, Mystery, Thriller', '8.1', 'Pulp novelist Holly Martins travels to shadowy, postwar Vienna, only to find himself investigating the mysterious death of an old friend, Harry Lime.', 'Carol Reed', 'https://m.media-amazon.com/images/M/MV5BNTAwZjAwZDUtNDc1Yi00OGY3LTgzMjktYjIyMjQzOWE3MmVhXkEyXkFqcGc@._V1_SX300.jpg'),
('43', 'The Maltese Falcon', '1941', '100 min', 'Crime, Film-Noir, Mystery', '8.0', 'San Francisco private detective Sam Spade takes on a case that involves him with three eccentric criminals, a gorgeous liar, and their quest for a priceless statuette, with the stakes rising after his partner is murdered.', 'John Huston', 'https://m.media-amazon.com/images/M/MV5BZjJhOTcwNGYtZGM3ZS00ZTYzLWJlZDYtMzllYmRkMDI4MjBkXkEyXkFqcGc@._V1_SX300.jpg'),
('44', 'Double Indemnity', '1944', '107 min', 'Crime, Drama, Film-Noir', '8.3', 'A Los Angeles insurance representative lets an alluring housewife seduce him into a scheme of insurance fraud and murder that arouses the suspicion of his colleague, an insurance investigator.', 'Billy Wilder', 'https://m.media-amazon.com/images/M/MV5BM2YwNjZlZDktNTlmNS00ODQwLWJmNmUtYmE1NTBhYjc1YTY5XkEyXkFqcGc@._V1_SX300.jpg'),
('45', 'Rebecca', '1940', '130 min', 'Drama, Film-Noir, Mystery', '8.1', 'A self-conscious woman juggles adjusting to her new role as an aristocrat\'s wife and avoiding being intimidated by his first wife\'s spectral presence.', 'Alfred Hitchcock', 'https://m.media-amazon.com/images/M/MV5BYTI0MjUyODAtZTBkNC00MmIwLWFlNmYtMWE3ZmJlOWJjM2QyXkEyXkFqcGc@._V1_SX300.jpg'),
('46', 'Strangers on a Train', '1951', '101 min', 'Crime, Drama, Film-Noir', '7.9', 'A psychopath forces a tennis star to comply with his theory that two strangers can get away with murder.', 'Alfred Hitchcock', 'https://m.media-amazon.com/images/M/MV5BYjZkNjIwYjktN2IzOC00MmJlLWFkNDItZDZmNGZkNjQzZTA0XkEyXkFqcGc@._V1_SX300.jpg'),
('47', 'Touch of Evil', '1958', '95 min', 'Crime, Drama, Film-Noir', '8.0', 'A stark, perverse story of murder, kidnapping, and police corruption in a Mexican border town.', 'Orson Welles', 'https://m.media-amazon.com/images/M/MV5BYzBkNTQzODUtNzcxMy00ZGNhLThmOWMtMTcyYzY4ZTU2NDM3XkEyXkFqcGc@._V1_SX300.jpg'),
('48', 'Notorious', '1946', '102 min', 'Drama, Film-Noir, Romance', '7.9', 'The daughter of a convicted Nazi spy is asked by American agents to gather information on a ring of Nazi scientists in South America. How far will she have to go to ingratiate herself with them?', 'Alfred Hitchcock', 'https://m.media-amazon.com/images/M/MV5BOGU5ZjdmNzUtMGY0Ny00NjMyLWJiMDEtMmMzYmMyOTNjNzlmXkEyXkFqcGc@._V1_SX300.jpg'),
('49', 'The Killing', '1956', '84 min', 'Crime, Drama, Film-Noir', '8.0', 'Crook Johnny Clay assembles a five-man team to plan and execute a daring racetrack robbery.', 'Stanley Kubrick', 'https://m.media-amazon.com/images/M/MV5BMTQ5MTUxMzU3Ml5BMl5BanBnXkFtZTgwMDU3NDYxMjE@._V1_SX300.jpg'),
('50', 'The Night of the Hunter', '1955', '92 min', 'Crime, Drama, Film-Noir', '8.0', 'A religious fanatic marries a gullible widow whose young children are reluctant to tell him where their real daddy hid the $10,000 he\'d stolen in a robbery.', 'Charles Laughton', 'https://m.media-amazon.com/images/M/MV5BZmZmOWEzYjktZWYxMi00MjlmLTlmNTAtMzI4ZDVlZmIxZGIzXkEyXkFqcGc@._V1_SX300.jpg'),
('51', 'WALL·E', '2008', '98 min', 'Animation, Adventure, Family', '8.4', 'In the distant future, a small waste-collecting robot inadvertently embarks on a space journey that will ultimately decide the fate of mankind.', 'Andrew Stanton', 'https://m.media-amazon.com/images/M/MV5BMjExMTg5OTU0NF5BMl5BanBnXkFtZTcwMjMxMzMzMw@@._V1_SX300.jpg'),
('52', 'The Lion King', '1994', '88 min', 'Animation, Adventure, Drama', '8.5', 'Lion prince Simba and his father are targeted by his bitter uncle, who wants to ascend the throne himself.', 'Roger Allers, \nRob Minkoff', 'https://m.media-amazon.com/images/M/MV5BZGRiZDZhZjItM2M3ZC00Y2IyLTk3Y2MtMWY5YjliNDFkZTJlXkEyXkFqcGc@._V1_SX300.jpg'),
('53', 'Up', '2009', '96 min', 'Animation, Adventure, Comedy', '8.3', '78-year-old Carl Fredricksen travels to Paradise Falls in his house equipped with balloons, inadvertently taking a young stowaway.', 'Pete Docter, \nBob Peterson', 'https://m.media-amazon.com/images/M/MV5BNmI1ZTc5MWMtMDYyOS00ZDc2LTkzOTAtNjQ4NWIxNjYyNDgzXkEyXkFqcGc@._V1_SX300.jpg'),
('54', 'Finding Nemo', '2003', '100 min', 'Animation, Adventure, Comedy', '8.2', 'After his son is captured in the Great Barrier Reef and taken to Sydney, a timid clownfish sets out on a journey to bring him home.', 'Andrew Stanton, \nLee Unkrich', 'https://m.media-amazon.com/images/M/MV5BMTc5NjExNTA5OV5BMl5BanBnXkFtZTYwMTQ0ODY2._V1_SX300.jpg'),
('55', 'Toy Story', '1995', '81 min', 'Animation, Adventure, Comedy', '8.3', 'A cowboy doll is profoundly threatened and jealous when a new spaceman action figure supplants him as top toy in a boy\'s bedroom.', 'John Lasseter', 'https://m.media-amazon.com/images/M/MV5BZTA3OWVjOWItNjE1NS00NzZiLWE1MjgtZDZhMWI1ZTlkNzYwXkEyXkFqcGc@._V1_SX300.jpg'),
('56', 'Monsters, Inc.', '2001', '92 min', 'Animation, Adventure, Comedy', '8.1', 'In order to power the city, monsters have to scare children so that they scream. However, the children are toxic to the monsters, and after a child gets through, two monsters realize things may not be what they think.', 'Pete Docter, \nDavid Silverman, \nLee Unkrich', 'https://m.media-amazon.com/images/M/MV5BMTY1NTI0ODUyOF5BMl5BanBnXkFtZTgwNTEyNjQ0MDE@._V1_SX300.jpg'),
('57', 'Harry Potter and the Deathly Hallows: Part 2', '2011', '130 min', 'Adventure, Family, Fantasy', '8.1', 'Harry, Ron, and Hermione search for Voldemort\'s remaining Horcruxes in their effort to destroy the Dark Lord as the final battle rages on at Hogwarts.', 'David Yates', 'https://m.media-amazon.com/images/M/MV5BOTA1Mzc2N2ItZWRiNS00MjQzLTlmZDQtMjU0NmY1YWRkMGQ4XkEyXkFqcGc@._V1_SX300.jpg'),
('58', 'Toy Story 3', '2010', '103 min', 'Animation, Adventure, Comedy', '8.3', 'The toys are mistakenly delivered to a day-care center instead of the attic right before Andy leaves for college, and it\'s up to Woody to convince the other toys that they weren\'t abandoned and to return home.', 'Lee Unkrich', 'https://m.media-amazon.com/images/M/MV5BMTgxOTY4Mjc0MF5BMl5BanBnXkFtZTcwNTA4MDQyMw@@._V1_SX300.jpg'),
('59', 'Harry Potter and the Sorcerer\'s Stone', '2001', '152 min', 'Adventure, Family, Fantasy', '7.6', 'An orphaned boy enrolls in a school of wizardry, where he learns the truth about himself, his family and the terrible evil that haunts the magical world.', 'Chris Columbus', 'https://m.media-amazon.com/images/M/MV5BNTU1MzgyMDMtMzBlZS00YzczLThmYWEtMjU3YmFlOWEyMjE1XkEyXkFqcGc@._V1_SX300.jpg'),
('60', 'Spirited Away', '2001', '125 min', 'Animation, Adventure, Family', '8.6', 'During her family\'s move to the suburbs, a sullen 10-year-old girl wanders into a world ruled by gods, witches, and spirits, and where humans are changed into beasts.', 'Hayao Miyazaki', 'https://m.media-amazon.com/images/M/MV5BNTEyNmEwOWUtYzkyOC00ZTQ4LTllZmUtMjk0Y2YwOGUzYjRiXkEyXkFqcGc@._V1_SX300.jpg'),
('61', 'Ratatouille', '2007', '111 min', 'Animation, Adventure, Comedy', '8.1', 'A rat who can cook makes an unusual alliance with a young kitchen worker at a famous Paris restaurant.', 'Brad Bird, \nJan Pinkava', 'https://m.media-amazon.com/images/M/MV5BMTMzODU0NTkxMF5BMl5BanBnXkFtZTcwMjQ4MzMzMw@@._V1_SX300.jpg'),
('62', 'How to Train Your Dragon', '2010', '98 min', 'Animation, Action, Adventure', '8.1', 'A hapless young Viking who aspires to hunt dragons becomes the unlikely friend of a young dragon himself, and learns there may be more to the creatures than he assumed.', 'Dean DeBlois, \nChris Sanders', 'https://m.media-amazon.com/images/M/MV5BMjA5NDQyMjc2NF5BMl5BanBnXkFtZTcwMjg5ODcyMw@@._V1_SX300.jpg'),
('63', 'The Prestige', '2006', '130 min', 'Drama, Mystery, Sci-Fi', '8.5', 'After a tragic accident, two stage magicians in 1890s London engage in a battle to create the ultimate illusion while sacrificing everything they have to outwit each other.', 'Christopher Nolan', 'https://m.media-amazon.com/images/M/MV5BMjA4NDI0MTIxNF5BMl5BanBnXkFtZTYwNTM0MzY2._V1_SX300.jpg'),
('64', 'Shutter Island', '2010', '138 min', 'Mystery, Thriller', '8.2', 'In 1954, a U.S. Marshal investigates the disappearance of a murderer who escaped from a hospital for the criminally insane.', 'Martin Scorsese', 'https://m.media-amazon.com/images/M/MV5BN2FjNWExYzEtY2YzOC00YjNlLTllMTQtNmIwM2Q1YzBhOWM1XkEyXkFqcGc@._V1_SX300.jpg'),
('65', 'Memento', '2000', '113 min', 'Mystery, Thriller', '8.4', 'A man with short-term memory loss attempts to track down his wife\'s murderer.', 'Christopher Nolan', 'https://m.media-amazon.com/images/M/MV5BYmQ3MjliNjAtNWFiZS00YWI1LTlmZTktMzBiNDE1NjRhZjU0XkEyXkFqcGc@._V1_SX300.jpg'),
('66', 'The Usual Suspects', '1995', '106 min', 'Crime, Drama, Mystery', '8.5', 'A sole survivor tells of the twisty events leading up to a horrific gun battle on a boat, which began when five criminals met at a seemingly random police lineup.', 'Bryan Singer', 'https://m.media-amazon.com/images/M/MV5BOTE5MDUxZDUtZWZmZC00NDVmLWFhOGQtNWI2YTc4NzY3MGQ0XkEyXkFqcGc@._V1_SX300.jpg'),
('67', 'The Sixth Sense', '1999', '107 min', 'Drama, Mystery, Thriller', '8.2', 'A frightened, withdrawn Philadelphia boy who communicates with spirits seeks the help of a disheartened child psychologist.', 'M. Night Shyamalan', 'https://m.media-amazon.com/images/M/MV5BZWQ2OTY0M2UtMTQxNC00MmIzLTllNDQtNDQ0MTQyYzI2M2ZiXkEyXkFqcGc@._V1_SX300.jpg'),
('68', 'Gone Girl', '2014', '149 min', 'Drama, Mystery, Thriller', '8.1', 'With his wife\'s disappearance having become the focus of an intense media circus, a man sees the spotlight turned on him when it\'s suspected that he may not be innocent.', 'David Fincher', 'https://m.media-amazon.com/images/M/MV5BMTk0MDQ3MzAzOV5BMl5BanBnXkFtZTgwNzU1NzE3MjE@._V1_SX300.jpg'),
('69', 'Donnie Darko', '2001', '113 min', 'Drama, Mystery, Sci-Fi', '8.0', 'After narrowly escaping a bizarre accident, a troubled teenager is plagued by visions of a man in a large rabbit suit who manipulates him to commit a series of crimes.', 'Richard Kelly', 'https://m.media-amazon.com/images/M/MV5BMWE3NTYzZmEtM2U5MS00MDZhLTk2ZTQtZTgzNjg0ZGQ5ZjM0XkEyXkFqcGc@._V1_SX300.jpg'),
('70', 'Million Dollar Baby', '2004', '132 min', 'Drama, Sport', '8.1', 'A determined woman works with a hardened boxing trainer to become a professional.', 'Clint Eastwood', 'https://m.media-amazon.com/images/M/MV5BMTkxNzA1NDQxOV5BMl5BanBnXkFtZTcwNTkyMTIzMw@@._V1_SX300.jpg'),
('71', 'Rocky', '1976', '120 min', 'Drama, Sport', '8.1', 'A small-time Philadelphia boxer gets a supremely rare chance to fight the world heavyweight champion in a bout in which he strives to go the distance for his self-respect.', 'John G. Avildsen', 'https://m.media-amazon.com/images/M/MV5BZDEyY2M2MGMtYjg5OC00ZWFjLWFkZDQtNmQzZTdiYmYzZTBkXkEyXkFqcGc@._V1_SX300.jpg'),
('72', 'Rush', '2013', '123 min', 'Action, Biography, Drama', '8.1', 'The merciless 1970s rivalry between Formula One rivals James Hunt and Niki Lauda.', 'Ron Howard', 'https://m.media-amazon.com/images/M/MV5BMTZhOGQxM2ItNGQyYy00YzE5LWI5MjMtNmMzNGQzNDE1OTUzXkEyXkFqcGc@._V1_SX300.jpg'),
('73', 'Warrior', '2011', '140 min', 'Action, Drama, Sport', '8.2', 'The youngest son of an alcoholic former boxer returns home, where he\'s trained by his father for competition in a mixed martial arts tournament - a path that puts the fighter on a collision course with his estranged, older brother.', 'Gavin O\'Connor', 'https://m.media-amazon.com/images/M/MV5BMTk4ODk5MTMyNV5BMl5BanBnXkFtZTcwMDMyNTg0Ng@@._V1_SX300.jpg'),
('74', 'Moneyball', '2011', '133 min', 'Biography, Drama, Sport', '7.6', 'Oakland A\'s general manager Billy Beane\'s successful attempt to assemble a baseball team on a lean budget by employing computer-generated analysis to acquire new players.', 'Bennett Miller', 'https://m.media-amazon.com/images/M/MV5BMjAxOTU3Mzc1M15BMl5BanBnXkFtZTcwMzk1ODUzNg@@._V1_SX300.jpg'),
('75', 'Cars', '2006', '117 min', 'Animation, Adventure, Comedy', '7.2', 'On the way to the biggest race of his life, a hotshot rookie race car gets stranded in a rundown town, and learns that winning isn\'t everything in life.', 'John Lasseter, \nJoe Ranft', 'https://m.media-amazon.com/images/M/MV5BMTg5NzY0MzA2MV5BMl5BanBnXkFtZTYwNDc3NTc2._V1_SX300.jpg'),
('76', 'Ford v Ferrari', '2019', '152 min', 'Action, Biography, Drama', '8.1', 'American car designer Carroll Shelby and driver Ken Miles battle corporate interference and the laws of physics to build a revolutionary race car for Ford in order to defeat Ferrari at the 24 Hours of Le Mans in 1966.', 'James Mangold', 'https://m.media-amazon.com/images/M/MV5BOTBjNTEyNjYtYjdkNi00YzE5LTljYzUtZjVlYmYwZmJmZWYxXkEyXkFqcGc@._V1_SX300.jpg'),
('77', 'The Fighter', '2010', '116 min', 'Action, Biography, Drama', '7.8', 'Based on the story of Micky Ward, a fledgling boxer who tries to escape the shadow of his more famous but troubled older boxing brother and get his own shot at greatness.', 'David O. Russell', 'https://m.media-amazon.com/images/M/MV5BMTM0ODk3MjM1MV5BMl5BanBnXkFtZTcwNzc1MDIwNA@@._V1_SX300.jpg'),
('78', 'Raging Bull', '1980', '129 min', 'Biography, Drama, Sport', '8.2', 'The life of boxer Jake LaMotta, whose violence and temper that led him to the top in the ring destroyed his life outside of it.', 'Martin Scorsese', 'https://m.media-amazon.com/images/M/MV5BMjlkYmYyZWQtNTZkOS00ZjA0LWEwNWUtNzE2ZGNiYjg0MjA2XkEyXkFqcGc@._V1_SX300.jpg'),
('79', 'The Blind Side', '2009', '129 min', 'Biography, Drama, Sport', '7.6', 'The story of Michael Oher, a homeless and traumatized boy who became an All-American football player and first-round NFL draft pick with the help of a caring woman and her family.', 'John Lee Hancock', 'https://m.media-amazon.com/images/M/MV5BMjEzOTE3ODM3OF5BMl5BanBnXkFtZTcwMzYyODI4Mg@@._V1_SX300.jpg'),
('80', 'Inception', '2010', '148 min', 'Action, Adventure, Sci-Fi', '8.8', 'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O., but his tragic past may doom the project and his team to disaster.', 'Christopher Nolan', 'https://m.media-amazon.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@._V1_SX300.jpg'),
('81', 'The Lord of the Rings: The Fellowship of the Ring', '2001', '178 min', 'Action, Adventure, Drama', '8.8', 'A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron.', 'Peter Jackson', 'https://m.media-amazon.com/images/M/MV5BNzIxMDQ2YTctNDY4MC00ZTRhLTk4ODQtMTVlOWY4NTdiYmMwXkEyXkFqcGc@._V1_SX300.jpg'),
('82', 'The Lord of the Rings: The Return of the King', '2003', '201 min', 'Action, Adventure, Drama', '9.0', 'Gandalf and Aragorn lead the World of Men against Sauron\'s army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.', 'Peter Jackson', 'https://m.media-amazon.com/images/M/MV5BMTZkMjBjNWMtZGI5OC00MGU0LTk4ZTItODg2NWM3NTVmNWQ4XkEyXkFqcGc@._V1_SX300.jpg'),
('83', 'Interstellar', '2014', '169 min', 'Adventure, Drama, Sci-Fi', '8.6', 'A team of explorers travel through a wormhole in space in an attempt to ensure humanity\'s survival.', 'Christopher Nolan', 'https://m.media-amazon.com/images/M/MV5BYzdjMDAxZGItMjI2My00ODA1LTlkNzItOWFjMDU5ZDJlYWY3XkEyXkFqcGc@._V1_SX300.jpg'),
('84', 'The Lord of the Rings: The Two Towers', '2002', '179 min', 'Action, Adventure, Drama', '8.8', 'While Frodo and Sam edge closer to Mordor with the help of the shifty Gollum, the divided fellowship makes a stand against Sauron\'s new ally, Saruman, and his hordes of Isengard.', 'Peter Jackson', 'https://m.media-amazon.com/images/M/MV5BMGQxMDdiOWUtYjc1Ni00YzM1LWE2NjMtZTg3Y2JkMjEzMTJjXkEyXkFqcGc@._V1_SX300.jpg'),
('85', 'Gladiator', '2000', '155 min', 'Action, Adventure, Drama', '8.5', 'A former Roman General sets out to exact vengeance against the corrupt emperor who murdered his family and sent him into slavery.', 'Ridley Scott', 'https://m.media-amazon.com/images/M/MV5BYWQ4YmNjYjEtOWE1Zi00Y2U4LWI4NTAtMTU0MjkxNWQ1ZmJiXkEyXkFqcGc@._V1_SX300.jpg'),
('86', 'Inglourious Basterds', '2009', '153 min', 'Adventure, Drama, War', '8.3', 'In Nazi-occupied France during World War II, a plan to assassinate Nazi leaders by a group of Jewish U.S. soldiers coincides with a theatre owner\'s vengeful plans for the same.', 'Quentin Tarantino', 'https://m.media-amazon.com/images/M/MV5BODZhMWJlNjYtNDExNC00MTIzLTllM2ItOGQ2NGVjNDQ3MzkzXkEyXkFqcGc@._V1_SX300.jpg'),
('87', 'Star Wars', '1977', '121 min', 'Action, Adventure, Fantasy', '8.6', 'Luke Skywalker joins forces with a Jedi Knight, a cocky pilot, a Wookiee and two droids to save the galaxy from the Empire\'s world-destroying battle station, while also attempting to rescue Princess Leia from the mysterious Darth Vader.', 'George Lucas', 'https://m.media-amazon.com/images/M/MV5BOGUwMDk0Y2MtNjBlNi00NmRiLTk2MWYtMGMyMDlhYmI4ZDBjXkEyXkFqcGc@._V1_SX300.jpg'),
('89', 'Star Wars: Episode V - The Empire Strikes Back', '1980', '124 min', 'Action, Adventure, Fantasy', '8.7', 'After the Rebels are overpowered by the Empire, Luke Skywalker begins Jedi training with Yoda, while his friends are pursued across the galaxy by Darth Vader and bounty hunter Boba Fett.', 'Irvin Kershner', 'https://m.media-amazon.com/images/M/MV5BMTkxNGFlNDktZmJkNC00MDdhLTg0MTEtZjZiYWI3MGE5NWIwXkEyXkFqcGc@._V1_SX300.jpg'),
('90', 'The Matrix', '1999', '136 min', 'Action, Sci-Fi', '8.7', 'When a beautiful stranger leads computer hacker Neo to a forbidding underworld, he discovers the shocking truth--the life he knows is the elaborate deception of an evil cyber-intelligence.', 'Lana Wachowski, \nLilly Wachowski', 'https://m.media-amazon.com/images/M/MV5BN2NmN2VhMTQtMDNiOS00NDlhLTliMjgtODE2ZTY0ODQyNDRhXkEyXkFqcGc@._V1_SX300.jpg'),
('91', 'The Avengers', '2012', '143 min', 'Action, Sci-Fi', '8.0', 'Earth\'s mightiest heroes must come together and learn to fight as a team if they are going to stop the mischievous Loki and his alien army from enslaving humanity.', 'Joss Whedon', 'https://m.media-amazon.com/images/M/MV5BNGE0YTVjNzUtNzJjOS00NGNlLTgxMzctZTY4YTE1Y2Y1ZTU4XkEyXkFqcGc@._V1_SX300.jpg'),
('92', 'Back to the Future', '1985', '116 min', 'Adventure, Comedy, Sci-Fi', '8.5', 'Marty McFly, a 17-year-old high school student, is accidentally sent 30 years into the past in a time-traveling DeLorean invented by his close friend, the maverick scientist Doc Brown.', 'Robert Zemeckis', 'https://m.media-amazon.com/images/M/MV5BZmM3ZjE0NzctNjBiOC00MDZmLTgzMTUtNGVlOWFlOTNiZDJiXkEyXkFqcGc@._V1_SX300.jpg'),
('93', 'Guardians of the Galaxy', '2014', '121 min', 'Action, Adventure, Comedy', '8.0', 'A group of intergalactic criminals must pull together to stop a fanatical warrior with plans to purge the universe.', 'James Gunn', 'https://m.media-amazon.com/images/M/MV5BM2ZmNjQ2MzAtNDlhNi00MmQyLWJhZDMtNmJiMjFlOWY4MzcxXkEyXkFqcGc@._V1_SX300.jpg'),
('94', 'Pirates of the Caribbean: The Curse of the Black Pearl', '2003', '143 min', 'Action, Adventure, Fantasy', '8.1', 'Blacksmith Will Turner teams up with eccentric pirate \"Captain\" Jack Sparrow to save his love, the governor\'s daughter, from Jack\'s former pirate allies, who are now undead.', 'Gore Verbinski', 'https://m.media-amazon.com/images/M/MV5BNDhlMzEyNzItMTA5Mi00YWRhLThlNTktYTQyMTA0MDIyNDEyXkEyXkFqcGc@._V1_SX300.jpg'),
('95', 'Star Wars: Episode VI - Return of the Jedi', '1983', '131 min', 'Action, Adventure, Fantasy', '8.3', 'After rescuing Han Solo from Jabba the Hutt, the Rebels attempt to destroy the second Death Star, while Luke struggles to help Darth Vader back from the dark side.', 'Richard Marquand', 'https://m.media-amazon.com/images/M/MV5BNWEwOTI0MmUtMGNmNy00ODViLTlkZDQtZTg1YmQ3MDgyNTUzXkEyXkFqcGc@._V1_SX300.jpg'),
('96', 'Saving Private Ryan', '1998', '169 min', 'Drama, War', '8.6', 'Following the Normandy Landings, a group of U.S. soldiers go behind enemy lines to retrieve a paratrooper whose brothers have been killed in action.', 'Steven Spielberg', 'https://m.media-amazon.com/images/M/MV5BZGZhZGQ1ZWUtZTZjYS00MDJhLWFkYjctN2ZlYjE5NWYwZDM2XkEyXkFqcGc@._V1_SX300.jpg'),
('97', 'The Pianist', '2002', '150 min', 'Biography, Drama, Music', '8.5', 'A Polish Jewish musician struggles to survive the destruction of the Warsaw ghetto of World War II.', 'Roman Polanski', 'https://m.media-amazon.com/images/M/MV5BMjEwNmEwYjgtNTk3ZC00NjljLTg5ZDctZTY3ZGQwZjRkZmQxXkEyXkFqcGc@._V1_SX300.jpg'),
('98', 'The Imitation Game', '2014', '114 min', 'Biography, Drama, Thriller', '8.0', 'During World War II, the English mathematical genius Alan Turing tries to crack the German Enigma code with help from fellow mathematicians while attempting to come to terms with his troubled private life.', 'Morten Tyldum', 'https://m.media-amazon.com/images/M/MV5BNjI3NjY1Mjg3MV5BMl5BanBnXkFtZTgwMzk5MDQ3MjE@._V1_SX300.jpg'),
('99', 'Full Metal Jacket', '1987', '116 min', 'Drama, War', '8.3', 'A pragmatic U.S. Marine observes the dehumanizing effects the Vietnam War has on his fellow recruits from their brutal boot camp training to the bloody street fighting in Hue.', 'Stanley Kubrick', 'https://m.media-amazon.com/images/M/MV5BYWUzNzZkNzUtNDdiYy00Nzk5LTgxMmItNTk0MjRjNjdjNDA0XkEyXkFqcGc@._V1_SX300.jpg'),
('100', 'Edge of Tomorrow', '2014', '113 min', 'Action, Adventure, Sci-Fi', '7.9', 'A soldier fighting aliens gets to relive the same day over and over again, the day restarting every time he dies.', 'Doug Liman', 'https://m.media-amazon.com/images/M/MV5BMTc5OTk4MTM3M15BMl5BanBnXkFtZTgwODcxNjg3MDE@._V1_SX300.jpg'),
('101', 'Pan\'s Labyrinth', '2006', '118 min', 'Drama, Fantasy, War', '8.2', 'In the Falangist Spain of 1944, the bookish young stepdaughter of a sadistic army officer escapes into an eerie but captivating fantasy world.', 'Guillermo del Toro', 'https://m.media-amazon.com/images/M/MV5BOTc1NTAxMWItMWFlNy00MmU2LTkwMTMtNzMwOTg5OTQ5YTFiXkEyXkFqcGc@._V1_SX300.jpg'),
('102', 'Apocalypse Now', '1979', '147 min', 'Drama, Mystery, War', '8.5', 'A U.S. Army officer serving in Vietnam is tasked with assassinating a renegade Special Forces Colonel who sees himself as a god.', 'Francis Ford Coppola', 'https://m.media-amazon.com/images/M/MV5BZDhiMTljYjYtODc1Yy00MmEwLTg2OTYtYmE1YTRmNDE4MmEwXkEyXkFqcGc@._V1_SX300.jpg'),
('103', 'The Dark Knight Rises', '2012', '164 min', 'Action, Drama', '8.4', 'Eight years after the Joker\'s reign of chaos, Batman is coerced out of exile with the assistance of the mysterious Selina Kyle in order to defend Gotham City from the vicious guerrilla terrorist Bane.', 'Christopher Nolan', 'https://m.media-amazon.com/images/M/MV5BMTk4ODQzNDY3Ml5BMl5BanBnXkFtZTcwODA0NTM4Nw@@._V1_SX300.jpg'),
('104', 'Léon: The Professional', '1994', '110 min', 'Action, Crime, Drama', '8.5', '12-year-old Mathilda is reluctantly taken in by Léon, a professional assassin, after her family is murdered. An unusual relationship forms as she becomes his protégée and learns the assassin\'s trade.', 'Luc Besson', 'https://m.media-amazon.com/images/M/MV5BNGRkYTNhOWQtYmI0Ni00MjZhLWJmMzAtMTA2Mjg4NGNiNDU0XkEyXkFqcGc@._V1_SX300.jpg'),
('105', 'Goodfellas', '1990', '145 min', 'Biography, Crime, Drama', '8.7', 'The story of Henry Hill and his life in the mob, covering his relationship with his wife Karen Hill and his mob partners Jimmy Conway and Tommy DeVito in the Italian-American crime syndicate.', 'Martin Scorsese', 'https://m.media-amazon.com/images/M/MV5BN2E5NzI2ZGMtY2VjNi00YTRjLWI1MDUtZGY5OWU1MWJjZjRjXkEyXkFqcGc@._V1_SX300.jpg'),
('106', 'Catch Me If You Can', '2002', '141 min', 'Biography, Crime, Drama', '8.1', 'Barely 21 yet, Frank is a skilled forger who has passed as a doctor, lawyer and pilot. FBI agent Carl becomes obsessed with tracking down the con man, who only revels in the pursuit.', 'Steven Spielberg', 'https://m.media-amazon.com/images/M/MV5BMTY5MzYzNjc5NV5BMl5BanBnXkFtZTYwNTUyNTc2._V1_SX300.jpg'),
('107', 'A Beautiful Mind', '2001', '135 min', 'Biography, Drama', '8.2', 'After John Nash, a brilliant but asocial mathematician, accepts secret work in cryptography, his life takes a turn for the nightmarish.', 'Ron Howard', 'https://m.media-amazon.com/images/M/MV5BNzljZTk5ZDgtZTQ1Zi00NTM4LThlOGUtZDk2MGM4NDQ4NWQyXkEyXkFqcGc@._V1_SX300.jpg'),
('108', 'The Intouchables', '2011', '112 min', 'Biography, Comedy, Drama', '8.5', 'After he becomes a quadriplegic from a paragliding accident, an aristocrat hires a young man from the projects to be his caregiver.', 'Olivier Nakache, \nÉric Toledano', 'https://m.media-amazon.com/images/M/MV5BMTYxNDA3MDQwNl5BMl5BanBnXkFtZTcwNTU4Mzc1Nw@@._V1_SX300.jpg'),
('109', 'The Social Network', '2010', '120 min', 'Biography, Drama', '7.8', 'As Harvard student Mark Zuckerberg creates the social networking site that would become known as Facebook, he is sued by the twins who claimed he stole their idea and by the co-founder who was later squeezed out of the business.', 'David Fincher', 'https://m.media-amazon.com/images/M/MV5BMjlkNTE5ZTUtNGEwNy00MGVhLThmZjMtZjU1NDE5Zjk1NDZkXkEyXkFqcGc@._V1_SX300.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `movie_id` varchar(8) NOT NULL,
  `rating` int(11) NOT NULL CHECK (`rating` >= 1 and `rating` <= 5)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `ratings`
--

INSERT INTO `ratings` (`id`, `user_id`, `movie_id`, `rating`) VALUES
(71, 9, '4', 3),
(74, 9, '12', 1),
(76, 9, '42', 4),
(80, 9, '17', 1),
(81, 9, '13', 3),
(83, 9, '36', 4),
(84, 9, '35', 4),
(85, 9, '34', 3),
(86, 9, '33', 1),
(87, 9, '43', 4),
(88, 9, '44', 5),
(89, 9, '47', 5),
(90, 9, '38', 3),
(92, 9, '37', 1),
(95, 9, '45', 4),
(98, 9, '11', 5),
(99, 9, '15', 2),
(100, 9, '16', 4),
(101, 9, '22', 4),
(102, 9, '27', 5),
(103, 9, '5', 4),
(105, 16, '2', 2),
(108, 16, '3', 4),
(109, 16, '7', 5),
(110, 16, '10', 1),
(111, 16, '17', 1),
(112, 16, '20', 3),
(113, 16, '39', 5),
(115, 1, '51', 5),
(116, 1, '49', 2),
(117, 1, '46', 2),
(119, 9, '2', 4);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('user','admin') DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `role`) VALUES
(1, 'admin', 'istrator', 'admin', 'admin.ratemee@gmail.com', '$2a$10$S.aJ3BNYovN3q/xYMZgD2.dR9uctCedtXOEK1lffZt2OxFMqHZSJS', 'admin'),
(9, 'A', 'A', 'A', 'ben.mazzega@gmail.com', '$2a$10$Pb9E4oyGtwbwsVjoztOKkOcQT/ZckOjQBbgiX33Jqylt9G4DS53Q.', 'user'),
(12, 'amanda', 'thefilmwatcher', 'ZeFilmWatcher', 'amfilm@gmail.com', '$2a$10$dBt0I7rN.fSh9RXgGVmR8ugoJjwk8pa8Siei1pZ9iAr4uGWXoA4G6', 'user'),
(16, 'thomas', 'thomas', 'thomasthomas', 'thomas@gmail.com', '$2a$10$lyScTi4ABEz1EwA62BYMQetbaAVkP2fsZ4z7yyI9X2qCajDe0tKpK', 'user');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_user_movie` (`user_id`,`movie_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
