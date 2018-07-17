class BoardCase
  #TO DO : la classe a 2 attr_accessor, sa valeur (X, O, ou vide), ainsi que son numéro de case)
  attr_accessor :status, :nbre_case
  @@instances = 0

  

  def initialize(status =" ")

    @status = status
    @nbre_case = nbre_case
    @@instances +=1
  end

  
  def modif_status(new_status)
    @status = new_status
  end
end

end



