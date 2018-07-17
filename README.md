Aujourd'hui, tu vas faire un programme from scratch qui va te faire manipuler les classes, et te faire jouer avec de l'abstrait. Ce programme sera le plus abstrait de la formation, mais il est indispensable de faire de l'abstrait pour mieux appréhender les problématiques de code.

Rien de tel que de coder un jeu pour les programme de POO ! Nous allons donc te demander de créer un Tic-Tac-Toe, jeu follement passionnant.

Voici les règles du programme :

le programme est à deux joueurs only (pas d'intelligence artificielle)
le programme doit commencer en demandant le prénom des joueurs
le programme doit afficher le plateau chaque tour (dans le terminal), puis demander au joueur auquel c'est le tour où ce dernier compte jouer
si un joueur gagne, le programme doit annoncer qui a gagné
s'il y a match nul, le programme doit annoncer qu'il y a match nul





====================================================================================================================

class BoardCase
  #TO DO : la classe a 2 attr_accessor, sa valeur (X, O, ou vide), ainsi que son numéro de case)

  
  def initialize
    #TO DO doit régler sa valeur, ainsi que son numéro de case
  end
  
  def to_s
    #TO DO : doit renvoyer la valeur au format string
  end

end

class Board
  include Enumerable
  #TO DO : la classe a 1 attr_accessor, une array qui contient les BoardCases


  def initialize
    #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans une array qui est l'attr_accessor de la classe
  end

  def to_s
  #TO DO : afficher le plateau

  end

  def play
    #TO DO : une méthode qui change la BoardCase jouée en fonction de la valeur du joueur (X, ou O)
  end

  def victory?
    #TO DO : qui gagne ?
  end

class Player
  #TO DO : la classe a 2 attr_accessor, son nom, sa valeur (X ou O). Elle a un attr_writer : il a gagné ?

  
  def initialize
    #TO DO : doit régler son nom, sa valeur, son état de victoire
  end

class Game
  def initialize
    #TO DO : créé 2 joueurs, créé un board
  end

  def go
    # TO DO : lance la partie
  end

  def turn
    #TO DO : affiche le plateau, demande au joueur il joue quoi, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie
  end

end

Game.new.go
