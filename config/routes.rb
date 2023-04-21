Rails.application.routes.draw do

  get("/", { :controller => "users", :action => "index" })

  # User routes

  get("/user_sign_up", { :controller => "users", :action => "new_registration_form" })
  # CREATE
  get("/insert_user_record", {:controller => "users", :action => "create" })

  # READ
  get("/users", {:controller => "users", :action => "index"})
  get("/users/:the_username", {:controller => "users", :action => "show"})

  # UPDATE
  get("/update_user/:the_user_id", {:controller => "users", :action => "update" })

  # DELETE
  get("/delete_user/:the_user_id", {:controller => "users", :action => "destroy"})

  # Photo routes

  # CREATE
  get("/insert_photo_record", { :controller => "photos", :action => "create" })

  # READ
  get("/photos", { :controller => "photos", :action => "index"})

  get("/photos/:the_photo_id", { :controller => "photos", :action => "show"})

  # UPDATE
  get("/update_photo/:the_photo_id", { :controller => "photos", :action => "update" })

  # DELETE
  get("/delete_photo/:the_photo_id", { :controller => "photos", :action => "destroy"})

  # Comment routes

  # CREATE
  get("/insert_comment_record", { :controller => "comments", :action => "create" })

  # DELETE

  get("/delete_comment/:the_comment_id", { :controller => "comments", :action => "destroy"})

end
