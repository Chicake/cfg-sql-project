-- making the database and tables

CREATE DATABASE kaedeAnimeList;

USE kaedeAnimeList;

CREATE TABLE animeList
(animeName VARCHAR(50) PRIMARY KEY,
genre CHAR(50),
aired DATE,
ep INT,
status CHAR(20),
community VARCHAR(50)
);

INSERT INTO animeList
(animeName, genre, aired, ep, status, community)
VALUES
("spy x family", "action", "2022-04-09", 12, "completed", "anya fans"),
("kaguya sama", "comedy", "2022-04-09", 13, "completed", "kaguya lovers"),
("tate no yuusha", "adventure", "2022-04-06", 13, "completed", "lets go isekai"),
("kawaii dake ja nai", "romance", "2022-04-10", 12, "completed", "school life"),
("komi-san 2", "comedy", "2022-04-07", 12, "completed", "school life"),
("summertime render", "mystery", "2022-04-15", 25, "completed", "mysterious death"),
("aharen-san", "comedy", "2022-04-02", 12, "completed", "school life"),
("tomodachi game", "suspense", "2022-04-06", 12, "completed", "mysterious death"),
("gaikotsu kishi-sama", "fantasy", "2022-04-07", 12, "completed", "lets go isekai"),
("yuusha, yamemasu", "fantasy", "2022-04-05", 12, "completed", "lets go isekai"),
("date a live iv", "sci-fi", "2022-04-08", 12, "completed", "lets go isekai"),
("otome game sekai wa mob", "fantasy", "2022-04-03", 12, "completed", "lets go isekai"),
("kakkou no iinazuke", "romance", "2022-04-24", 24, "completed", "school life"),
("rikei ga koi", "romance", "2022-04-02", 12, "completed", "rikejyo"),
("ao ashi", "sports", "2022-04-09", 24, "completed", "sportsmanship"),
("deaimon", "slice of life", "2022-04-06", 12, "completed", "hungry rumbly"),
("dance dance danseur", "drama", "2022-04-09", 11, "completed", "like ballerina"),
("heroine tarumono", "romance", "2022-04-07", 12, "completed", "i am the heroine"),
("kingdom 4", "action", "2022-04-10", 26, "completed", "my own kingdom"),
("birdie wing", "sports", "2022-04-06", 12, "completed", "sportsmanship"),
("love all play", "sports", "2022-04-02", 24, "completed", "sportsmanship"),
("gunjou no fanfare", "sports", "2022-04-02", 13, "completed", "sportsmanship"),
("kyoukai senki 2", "sci-fi", "2022-04-12", 12, "completed", "boundary between war"),
("shadowverse flame", "fantasy", "2022-04-02", 24, "completed", "childhood nostalgia"),
("one piece", "adventure", "1999-10-20", 1245, "ongoing", "one piece"),
("boruto", "action", "2017-04-05", 648, "ongoing", "boruto"),
("detective conan", "mystery", "1996-01-08", 1890, "ongoing", "mysterious death"),
("crayon shin-chan", "comedy", "1992-04-13", 2405, "ongoing", "childhood nostalgia"),
("sazae-san", "comedy", "1969-10-05", 6039, "ongoing", "childhood nostalgia"),
("precure", "action", "2022-02-06", 45, "ongoing", "childhood nostalgia"), 
("5-toubun no hanayome", "romance", "2022-05-20", 1, "completed", "movie night"),
("dragon ball super", "action", "2022-06-11", 1, "completed", "movie night"),
("karakai jouzu no takagi-san", "comedy", "2022-06-10", 1, "completed", "movie night"),
("free", "sports", "2022-04-22", 1, "completed", "movie night"),
("mobile suit gundam", "action", "2022-06-03", 1, "completed", "movie night"),
("toku: touken ranbu", "fantasy", "2022-05-20", 1, "completed", "movie night");

CREATE TABLE ratings
(animeName VARCHAR(50),
username VARCHAR(50),
story INT,
person INT,
art INT,
soundtrack INT,
overall INT,
PRIMARY KEY (animeName, username)
);

INSERT INTO ratings
(animeName, username, story, person, art, soundtrack, overall)
VALUES
("spy x family", "etheldoyle", 9, 9, 10, 9, 10),
("kaguya sama", "leomckenzie", 9, 9, 9, 9, 10),
("tate no yuusha", "nicholaskennedy", 10, 9, 10, 10, 9),
("kawaii dake ja nai", "todneyadams", 10, 10, 9, 9, 10),
("komi-san 2", "joydavis", 9, 10, 10, 9, 10),
("summertime render",  "neilmoore", 9, 10, 10, 9, 9),
("aharen-san", "rileyatkins", 10, 9, 10, 10, 9),
("tomodachi game", "sapphirehendricks", 9, 9, 10, 10, 9),
("gaikotsu kishi-sama", "arnoldedwards", 9, 10, 10, 9, 10),
("yuusha, yamemasu", "louisecontreras", 9, 10, 10, 9, 10),
("date a live iv", "judeannewman", 9, 9, 10, 10, 9),
("otome game sekai wa mob", "neilmoore", 7, 8, 5, 7, 9),
("kakkou no iinazuke", "nicholaskennedy", 6, 8, 9, 7, 6),
("rikei ga koi", "anneunderwood", 10, 9, 9, 9, 10),
("ao ashi", "devainhopkins", 10, 9, 10, 10, 9),
("deaimon", "madisondaniel", 10, 10, 9, 9, 9),
("dance dance danseur", "deanacraft", 10, 9, 9, 9, 10),
("heroine tarumono", "kehlanikane", 9, 10, 10, 9, 10),
("kingdom 4", "simonetran", 9, 9, 10, 10, 9),
("birdie wing", "alexleach", 9, 9, 10, 9, 10),
("love all play", "alexanderson", 9, 9, 10, 10, 9),
("gunjou no fanfare", "rondallwhitfield", 9, 9, 10, 10, 10),
("kyoukai senki 2", "rickcarr", 9, 9, 9, 10, 10),
("shadowverse flame", "lucilenunez", 10, 10, 9, 10, 10),
("one piece", "suzettemaddox", 9, 10, 9, 9, 10),
("boruto", "rondallhaley", 10, 9, 9, 10, 10),
("detective conan", "annabeasley", 10, 9, 10, 10, 9),
("crayon shin-chan", "elsarobinson", 9, 10, 9, 10, 10),
("sazae-san", "dajuanduran", 10, 10, 9, 9, 9),
("precure", "lucilenunez", 4, 6, 7, 5, 7), 
("5-toubun no hanayome", "linahood", 9, 10, 9, 10, 10),
("dragon ball super", "caitlinanthony", 9, 10, 9, 10, 10),
("karakai jouzu no takagi-san", "marshagoodman", 10, 9, 9, 10, 10),
("free", "henleyriley", 10, 9, 10, 9, 9),
("mobile suit gundam", "anneunderwood", 6, 8, 9, 6, 7),
("toku: touken ranbu", "kehlanikane", 6, 7, 5, 7, 8),
("spy x family", "devainhopkins", 6, 8, 6, 5, 7),
("kaguya sama", "iriswynn", 9, 10, 9, 10, 10),
("tate no yuusha", "todneyadams", 6, 8, 9, 8, 6),
("kawaii dake ja nai", "leomckenzie", 4, 7, 8, 6, 6),
("komi-san 2", "etheldoyle", 5, 7, 8, 6, 7),
("summertime render", "tysonfleming", 9, 10, 10, 10, 9),
("aharen-san", "madisondaniel", 5, 7, 5, 8, 8),
("tomodachi game", "simonetran", 5, 6, 7, 4, 6),
("gaikotsu kishi-sama", "rondallhaley", 5, 7, 5, 3, 5),
("yuusha, yamemasu", "alexleach", 5, 7, 5, 4, 6),
("date a live iv", "alexanderson", 4, 6, 4, 6, 7),
("otome game sekai wa mob", "yvettefulton", 5, 6, 4, 3, 5),
("kakkou no iinazuke", "yvettefulton", 4, 6, 4, 6, 3),
("rikei ga koi", "yvettefulton", 4, 6, 3, 5, 5),
("ao ashi", "alexleach", 4, 6, 7, 5, 4),
("deaimon", "alexanderson", 6, 3, 6, 6, 4),
("dance dance danseur", "staciesheppard", 9, 9, 10, 10, 10),
("heroine tarumono", "rondallwhitfield", 4, 6, 7, 6, 5),
("kingdom 4", "thomasgriffin", 10, 10, 9, 10, 9),
("birdie wing", "thomasgriffin", 6, 6, 5, 6, 7),
("love all play", "thomasgriffin", 5, 3, 6, 7, 4),
("gunjou no fanfare", "thomasgriffin", 5, 7, 3, 6, 7),
("kyoukai senki 2", "alexanderson", 5, 7, 4, 3 ,6),
("shadowverse flame", "rondallwhitfield", 5, 6, 7, 5, 5),
("one piece", "davionpatrick", 10, 9, 10, 10, 9),
("boruto", "tristramweiss", 9, 10, 10, 9, 10),
("detective conan", "staciesheppard", 5, 7, 4, 6, 7),
("crayon shin-chan", "staciesheppard", 5, 7, 5, 4, 6),
("sazae-san", "alexleach", 5, 7, 8, 6, 5),
("precure", "rondallwhitfield", 6, 5, 7, 8, 6), 
("5-toubun no hanayome", "alexleach", 5, 6, 4, 6, 7),
("dragon ball super", "dajuanduran", 6, 7, 5, 4, 7),
("karakai jouzu no takagi-san", "dajuanduran", 7, 6, 4, 7, 6),
("free", "dajuanduran", 5, 7, 8, 5, 7),
("mobile suit gundam", "staciesheppard", 4, 6, 7, 5, 6),
("toku: touken ranbu", "arnoldedwards", 6, 7, 8, 4, 7),
("spy x family", "caitlinanthony", 7, 4, 3, 6, 7),
("kaguya sama", "magdalenastevenson", 9, 10, 10, 9, 10),
("tate no yuusha", "louisecontreras", 5, 7, 8, 5, 7),
("kawaii dake ja nai", "arnoldedwards", 5, 7, 4, 3, 6),
("komi-san 2", "caitlinanthony", 5, 7, 8, 5, 7),
("summertime render", "jillstrong", 5, 7, 5, 4, 7),
("aharen-san", "magdalenastevenson", 6, 7, 5, 4, 6),
("tomodachi game", "magdalenastevenson", 5, 7, 8, 6, 7),
("gaikotsu kishi-sama", "rickcarr", 5, 7, 5, 4, 6),
("yuusha, yamemasu", "sapphirehendricks", 5, 7, 4, 6, 7),
("date a live iv", "linahood", 5, 7, 5, 4, 6),
("otome game sekai wa mob", "linahood", 3, 5, 6, 7, 4),
("kakkou no iinazuke", "tristramweiss", 5, 7, 5, 3, 8),
("rikei ga koi", "judeannewman", 5, 7, 4, 4, 6),
("ao ashi", "iriswynn", 6, 8, 4, 5, 6),
("deaimon", "jillstrong", 5, 7, 8, 9, 7),
("dance dance danseur", "yvettefulton", 9, 10, 10, 9, 10),
("heroine tarumono", "annabeasley", 6, 7, 7, 5, 7),
("kingdom 4", "annabeasley", 6, 7, 4, 3, 7),
("birdie wing", "suzettemaddox", 5, 7, 5, 4, 5),
("love all play", "davionpatrick", 5, 7, 4, 7, 8),
("gunjou no fanfare", "rileyatkins", 5, 7, 5, 8, 9),
("kyoukai senki 2", "davionpatrick", 5, 6, 4, 6, 7),
("shadowverse flame", "deanacraft", 5, 7, 5, 3, 5),
("one piece", "henleyriley", 6, 6, 7, 8, 6),
("boruto", "ennisfitzpatrick", 9, 10, 10, 10, 9),
("detective conan", "henleyriley", 6, 7, 8, 8, 5),
("crayon shin-chan", "joydavis", 6, 8, 4, 6, 8),
("sazae-san", "ennisfitzpatrick", 5, 7, 4, 6, 7),
("precure", "tysonfleming", 6, 7, 7, 8, 6), 
("5-toubun no hanayome", "rileyatkins", 5, 6, 4, 6, 8),
("dragon ball super", "tysonfleming", 5, 7, 8, 9, 7),
("karakai jouzu no takagi-san", "neilmoore", 9, 10, 10, 9, 10),
("free", "marshagoodman", 5, 7, 4, 7, 8),
("mobile suit gundam", "marshagoodman", 5, 7, 8, 5, 7),
("toku: touken ranbu", "louisecontreras", 4, 7, 8, 5, 6),
("boruto", "jillstrong", 9, 10, 10, 9, 10);

CREATE TABLE user
(username VARCHAR(50) PRIMARY KEY,
gmail VARCHAR(50),
password VARCHAR(20),
subscription CHAR(10),
sex CHAR(10),
age INT,
community VARCHAR(50)
);

INSERT INTO user
(username, gmail, password, subscription, sex, age, community)
VALUES
("neilmoore", "purpleneil@gmail.com", "heron1011", "essential", "male", 80, "mysterious death"),
("nicholaskennedy", "coppernicholas@gmail.com", "albatross2002", "premium", "male", 18, "lets go isekai"),
("lucilenunez", "whitelucile@gmail.com", "blackbird1704", "essential", "female", 64, "childhood nostalgia"),
("anneunderwood", "greyann@gmail.com", "crab2806", "standard", "female", 30, "rikejyo"),
("kehlanikane", "limekehlani@gmail.com", "blackcrazyant2606", "premium", "female", 18, "i am the heroine"),
("devainhopkins", "reddevian@gmail.com", "badger1709", "standard", "male", 48, "sportsmanship"),
("todneyadams", "silvertodney@gmail.com", "viper1209", "standard", "male", 19, "school life"),
("leomckenzie", "copperleo@gmail.com", "gentoopenguin1103", "premium", "male", 37, "kaguya lovers"),
("etheldoyle", "bronzeethel@gmail.com", "grizzlybear1408", "essential", "female", 45, "anya fans"),
("madisondaniel", "lilacmadison@gmail.com", "lapwing0609", "essential", "female", 41, "hungry rumbly"),
("simonetran", "whitesimone@gmail.com", "watershrew1206", "premium", "male", 32, "my own kingdom"),
("rondallhaley", "silverrondall@gmail.com", "wildboar0107", "standard", "male", 23, "boruto"),
("linahood", "goldlina@gmail.com", "snake2802", "premium", "female", 26, "movie night"),
("deanacraft", "yellowdeana@gmail.com", "lobster0402", "essential", "female", 36, "like ballerina"),
("suzettemaddox", "cyansuzette@gmail.com", "impala2604", "standard", "female", 26, "one piece"),
("rickcarr", "bluerick@gmail.com", "cichild2207", "premium", "male", 30, "boundary between war"),
("sapphirehendricks", "silversapphire@gmail.com", "trapdoorspider0610", "essential", "female", 20, "mysterious death"),
("tristramweiss", "redtristram@gmail.com", "locust1503", "standard", "male", 27, "boruto"),
("iriswynn", "orangeiris@gmail.com", "fairywren1302", "premium", "female", 24, "kaguya lovers"),
("joydavis", "turquoisejoy@gmail.com", "beaver0502", "essential", "male", 54, "school life"),
("ennisfitzpatrick", "crimsonennis@gmail.com", "seal0202", "standard", "male", 30, "boruto"),
("arnoldedwards", "skybluearnold@gmail.com", "fairywren1310", "premium", "male", 45, "lets go isekai"),
("louisecontreras", "indigolouise@gmail.com", "goshawk2409", "essential", "male", 18, "lets go isekai"),
("rileyatkins", "peachriley@gmail.com", "trumpeterswan1204", "standard", "male", 72, "school life"),
("annabeasley", "greenanna@gmail.com", "nightjar2511", "premium", "female", 33, "mysterious death"),
("judeannewman", "goldjudean@gmail.com", "thrush2204", "essential", "male", 61, "lets go isekai"),
("davionpatrick", "greydavion@gmail.com", "kitten1007", "essential", "male", 28, "one piece"),
("magdalenastevenson", "greenmagdalena@gmail.com", "dromedary2102", "essential", "female", 23, "kaguya lovers"),
("caitlinanthony", "crimsoncaitlin@gmail.com", "porpoise1902", "premium", "female", 44, "movie night"),
("marshagoodman", "lilacmarsha@gmail.com", "greywolf1602", "premium", "female", 30, "movie nigth"),
("jillstrong", "blackjill@gmail.com", "coralsnake2411", "standard", "female", 20, "boruto"),
("tysonfleming", "peachtyson@gmail.com", "pika2607", "standard", "male", 45, "mysterious death"),
("henleyriley", "aquamarinehenley@gmail.com", "blackmamba1709", "essential", "male", 69, "movie night"),
("staciesheppard", "aquamarinestacie@gmail.com", "otter2902", "essential", "female", 20, "like ballerina"),
("thomasgriffin", "goldthomas@gmail.com", "bat0111", "standard", "male", 40, "my own kingdom"),
("yvettefulton", "pinkyvette@gmail.com", "seal2707", "premium", "female", 57, "like ballerina"),
("alexleach", "slatealex@gmail.com", "squid2909", "standard", "female", 24, "sportsmanship"),
("alexanderson", "pinkalex@gmail.com", "bullfinch1011", "premium", "male", 81, "sportmanship"),
("rondallwhitfield", "lilacrondall@gmail.com", "africanelephant0511", "essential", "male", 33, "sportsmanship"),
("dajuanduran", "bronzedajuan@gmail.com", "osprey2103", "standard", "male", 24, "childhood nostalgia"),
("elsarobinson", "peachelsa@gmail.com", "woodcock1210", "standard", "female", 43, "childhood nostalgia");

CREATE TABLE subscriptionTable
(subscription CHAR(10) PRIMARY KEY,
seeingList BOOLEAN,
saveAnime BOOLEAN,
favourite BOOLEAN,
joinCommunity BOOLEAN,
addFriend BOOLEAN,
searchAnime BOOLEAN,
watchTrailer BOOLEAN,
ads BOOLEAN,
badge BOOLEAN,
customPage BOOLEAN,
watchAnime BOOLEAN
);

INSERT INTO subscriptionTable
(subscription, seeingList, saveAnime, favourite, joinCommunity, addFriend, searchAnime, watchTrailer, ads, badge, customPage, watchAnime)
VALUES
("essential", 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0),
("standard", 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
("premium", 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

CREATE TABLE communityList
(community VARCHAR(50) PRIMARY KEY,
type CHAR(50),
size CHAR(10),
genre CHAR(50),
username VARCHAR(50),
createdDate DATE
);

INSERT INTO communityList
(community, type, size, genre, username, createdDate)
VALUES
("mysterious death", "multiple anime", "medium", "mystery", "neilmoore", "2022-05-05"),
("lets go isekai", "topic", "large", "fantasy", "nicholaskennedy", "2022-06-12"),
("childhood nostalgia", "multiple anime", "large", "comedy", "lucilenunez", "1999-05-19"),
("rikejyo", "single anime", "small", "romance", "anneunderwood", "2022-04-28"),
("i am the heroine", "single anime", "medium", "romance", "kehlanikane", "2022-05-24"),
("sportsmanship", "topic", "large", "sports", "devainhopkins", "2022-07-19"),
("school life", "topic", "large", "comedy", "todneyadams", "2022-05-28"),
("kaguya lovers", "single anime", "small", "romance", "leomckenzie", "2022-07-17"),
("anya fans", "single anime", "medium", "action", "etheldoyle", "2022-06-01"),
("hungry rumbly", "multiple anime", "small", "slice of life", "madisondaniel", "2022-06-20"),
("my own kingdom", "single anime", "small", "action", "simonetran", "2022-06-30"),
("boruto", "single anime", "large", "action", "rondallhaley", "2020-03-04"),
("movie night", "topic", "large", "all", "linahood", "2022-05-28"),
("like ballerina", "multiple anime", "small", "drama", "deanacraft", "2022-07-03"),
("one piece", "single anime", "large", "adventure", "suzettemaddox", "2000-10-03"),
("boundary between war", "miltiple anime", "medium", "sci-fi", "rickcarr", "2022-06-03");

ALTER TABLE animeList
ADD FOREIGN KEY (animeName) REFERENCES ratings(animeName);

ALTER TABLE ratings
ADD FOREIGN KEY (animeName) REFERENCES animeList(animeName),
ADD FOREIGN KEY (username) REFERENCES user(username);

ALTER TABLE user
ADD FOREIGN KEY (username) REFERENCES ratings(username);

-- add average ratings for each anime
CREATE TABLE meanRatings AS
SELECT AVG((r.story + r.person + r.art + r.soundtrack + r.overall)/5) AS mean, animeName
FROM ratings r
GROUP BY r.animeName;

ALTER TABLE animeList
ADD rating float(3,1);

UPDATE animeList a
SET a.rating = 
(SELECT mean
FROM meanRatings m
WHERE a.animeName=m.animeName);
  
-- create joined table to see demographics (age and sex) of users in each community
CREATE VIEW communityResearch AS
(SELECT u.community, AVG(u.age) AS age, COUNT(CASE WHEN u.sex='male' THEN 1 END) AS male, COUNT(CASE WHEN u.sex='female' THEN 1 END) AS female 
FROM user u 
JOIN
communityList c
ON u.community = c.community
GROUP BY u.community);

SELECT * FROM communityResearch;

-- stored function - signin
DELIMITER //
CREATE FUNCTION signin(
    entered_gmail VARCHAR(50),
	entered_password VARCHAR(50)
) 
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
    DECLARE login_status VARCHAR(20);
    IF EXISTS(SELECT * FROM USER WHERE gmail=entered_gmail AND password=entered_password) THEN
        SET login_status = 'Success';
	ELSE
        SET login_status = 'Rejected';
    END IF;
    RETURN (login_status);
END//
DELIMITER ;

SELECT signin("pinkalex@gmail.com", "bullfinch1011")
FROM user;

-- stored procedure - check subscription
DELIMITER //
CREATE PROCEDURE see_subscription(
mySubscription VARCHAR(50)
) 
BEGIN
    IF (SELECT subscription FROM user WHERE username = mySubscription) = "essential" THEN
        SELECT * FROM subscriptionTable WHERE subscription = "essential";
	ELSEIF (SELECT subscription FROM user WHERE username = mySubscription) = "standard" THEN
        SELECT * FROM subscriptionTable WHERE subscription = "standard";
	ELSEIF (SELECT subscription FROM user WHERE username = mySubscription) = "premium" THEN
        SELECT * FROM subscriptionTable WHERE subscription = "premium";
	END IF;
END//
DELIMITER ;

CALL see_subscription("alexanderson");

-- group-by analysis: show ranking of genre
SELECT genre, avg(rating) AS genre_rating, RANK() OVER(ORDER BY AVG(rating) DESC) AS ranking
FROM animeList
GROUP BY genre;