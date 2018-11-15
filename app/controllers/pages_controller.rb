class PagesController < ApplicationController
before_action :authenticate_admin!, only: [:ManagerOptions]
def NutritionalInfo 
end

def Game1
end

def Game2
end

def Game3
end

def ManagerOptions
	
end

end
