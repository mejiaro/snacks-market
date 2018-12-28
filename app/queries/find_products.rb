class FindProducts
  attr_accessor :initial_scope

  def initialize(initial_scope)
    @initial_scope = initial_scope
  end

  def call(params)
    scoped = search(initial_scope, params[:search])
    scoped = sort(scoped, params[:sort_by], params[:sort_direction])
    scoped = paginate(scoped, params[:page])
    scoped
  end

  private 

  def search(scoped, query = nil)
    query ? scoped.where("lower(name) like ?", "#{query.downcase}%") : scoped
  end
  
  def paginate(scoped, page_number = 0)
    scoped.page(page_number)
  end

  def sort(scoped, sort_by, sort_direction)
    sort_by ||= :name
    sort_direction ||= :desc
    scoped.order(sort_by => sort_direction)
  end


end