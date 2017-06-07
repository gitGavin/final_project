class ListingsController < ApplicationController
  def index
    @listings = Listing.all

    render("listings/index.html.erb")
  end

  def show
    @listing = Listing.find(params[:id])

    render("listings/show.html.erb")
  end

  def new
    @listing = Listing.new

    render("listings/new.html.erb")
  end

  def create
    @listing = Listing.new

    @listing.book_name = params[:book_name]
    @listing.version = params[:version]
    @listing.course_code = params[:course_code]
    @listing.required = params[:required]
    @listing.price = params[:price]
    @listing.description = params[:description]
    @listing.user_id = params[:user_id]

    save_status = @listing.save

    if save_status == true
      redirect_to("/listings/#{@listing.id}", :notice => "Listing created successfully.")
    else
      render("listings/new.html.erb")
    end
  end

  def edit
    @listing = Listing.find(params[:id])

    render("listings/edit.html.erb")
  end

  def update
    @listing = Listing.find(params[:id])

    @listing.book_name = params[:book_name]
    @listing.version = params[:version]
    @listing.course_code = params[:course_code]
    @listing.required = params[:required]
    @listing.price = params[:price]
    @listing.description = params[:description]
    @listing.user_id = params[:user_id]

    save_status = @listing.save

    if save_status == true
      redirect_to("/listings/#{@listing.id}", :notice => "Listing updated successfully.")
    else
      render("listings/edit.html.erb")
    end
  end

  def destroy
    @listing = Listing.find(params[:id])

    @listing.destroy

    if URI(request.referer).path == "/listings/#{@listing.id}"
      redirect_to("/", :notice => "Listing deleted.")
    else
      redirect_to(:back, :notice => "Listing deleted.")
    end
  end
end
