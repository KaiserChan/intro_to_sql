# EXERCISE 3 - INTRO TO SQL QUERIES


# 1) Find all the robots from Star Wars.

# SELECT name FROM robots WHERE source = 'Star Wars';
# Result = C3PO, R2D2



# 2) Find the robot with an "anxious" personality.

# SELECT name FROM robots WHERE personality = 'anxious';
# Result = C3PO



# 3) Find all recipes that are nut free.

# SELECT name FROM recipes WHERE nut_free = 'TRUE';
# name
# -------------------------------------------
# Butternut Squash Bake
# Vegetarian Bibimbap
# French Veggie Loaf
# Quinoa and Black Beans
# Juicy Roasted Chicken
# Garlic Green Beans
# Stout Slow Cooker Corned Beef and Veggies
# (7 rows)



# 4) Count the number of recipes that are gluten free but not vegetarian.

# SELECT COUNT (name) FROM recipes WHERE vegetarian ='FALSE' AND gluten_free = 'TRUE';
# count
# -------
#     2
# (1 row)



# 5) Find the animal with the most legs.

# SELECT MAX(number_of_legs) FROM animals;
#  max
# -----
#    8
# (1 row)

# SELECT name FROM animals WHERE number_of_legs = 8;
#   name
# ---------
#  octopus
# (1 row)



# 6) Find the board game that takes the least amount of time to play.

# SELECT MIN(mins_to_play) FROM board_games;
#  min
# -----
#   15
# (1 row)

# SELECT name FROM board_games WHERE mins_to_play = 15;
#    name
# ----------
#  Sushi Go
#  Quixo
# (2 rows)



# 7) Find the recipe that takes the most time to prepare.

# SELECT MAX(minutes_required) FROM recipes;
#  max
# -----
#  390
# (1 row)

# SELECT name FROM recipes WHERE minutes_required = 390;
#                    name
# -------------------------------------------
#  Stout Slow Cooker Corned Beef and Veggies
# (1 row)



# 8) Find all the robots whose name starts with the letter M.

# SELECT name FROM robots WHERE name LIKE 'M%';
#       name      
# ----------------
#  Marvin
#  Mr. Butlertron
# (2 rows)

# 9) Count the number of board games that can be played by 8 people.

# SELECT name FROM board_games WHERE max_players BETWEEN 8 AND 100;
#           name
# ------------------------
#  Arkham Horror
#  Cards Against Humanity
#  Game of Things
# (3 rows)



# 10) Find all animals that are swimming and egg-laying.

# SELECT name FROM animals WHERE swimming = 'TRUE' AND egg_laying = 'TRUE';
#   name
# ---------
#  octopus
#  duck
# (2 rows)



# 11) Find all animals that are swimming and egg-laying but not flying.

# SELECT name FROM animals WHERE swimming = 'TRUE' AND egg_laying = 'TRUE' AND flying = 'FALSE';
#   name
# ---------
#  octopus
# (1 row)



12) Find the board game that supports the largest number of people.

SELECT MAX(max_players) FROM board_games;
 max
-----
  30
(1 row)

SELECT name FROM board_games WHERE max_players = (SELECT MAX(max_players) FROM board_games);
          name
------------------------
 Cards Against Humanity
(1 row)
