class BoardsController < ActionController::Base

  def new
    @board = Board.new
  end

  def create
   @board = Board.new(board_params)
   if @board.save
     redirect_to boards_path
     flash[:notice] = "Successfully added board"
   else
     render new_board_path
   end
  end

  def index
    @boards = Board.all
  end

  def show
    @board = Board.find(params[:id])
  end

  def board_params
    params.require(:board).permit(:company, :name)
  end

end
