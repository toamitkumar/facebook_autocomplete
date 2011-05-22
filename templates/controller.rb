class <%= controller_class_name %>Controller < ApplicationController
  # GET <%= route_url %>
  # GET <%= route_url %>.xml
  # GET <%= route_url %>.json
  def index
    query = params[:tag]
    if query.blank?
      @<%= plural_table_name %> = <%= orm_class.all(class_name) %>
    else
      @<%= plural_table_name %> = <%= class_name %>.where("<%= scaffold_parameter %> LIKE ?", "#{query}%").limit(10)
    end

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @<%= plural_table_name %> }
      format.json { render :text => @<%= plural_table_name %>.collect {|<%= singular_table_name %>| <%= singular_table_name %>.auto_complete_info('<%= scaffold_parameter %>')}.to_json }
    end
  end
end