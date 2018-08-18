# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180818003224) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actividades_usuarios", force: :cascade do |t|
    t.integer "id_usuario"
    t.integer "id_actividad"
    t.integer "puntos"
    t.datetime "fecha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "actividads", force: :cascade do |t|
    t.integer "id_actividad"
    t.string "titulo"
    t.integer "id_fundacion"
    t.text "descripcion"
    t.integer "puntos"
    t.datetime "fecha_inicio"
    t.datetime "fecha_fin"
    t.string "activo"
    t.string "bool"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.integer "count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "foundations", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.integer "count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fundacions", force: :cascade do |t|
    t.integer "id_fundacion"
    t.string "nombre"
    t.string "nit"
    t.integer "id_tipo"
    t.string "activo"
    t.string "bool"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "perfil_rols", force: :cascade do |t|
    t.integer "id_perfil"
    t.integer "id_rol"
    t.integer "activo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "perfils", force: :cascade do |t|
    t.integer "id_perfil"
    t.string "descripcion_perfil"
    t.integer "activo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.integer "descripcion"
    t.string "nombre_rol"
    t.string "descripcion_rol"
    t.integer "activo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipos_fundacions", force: :cascade do |t|
    t.integer "id_tipo"
    t.string "nombre"
    t.string "descripcion"
    t.integer "activo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "nameNAME"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "usuarios", force: :cascade do |t|
    t.integer "id_usuario"
    t.string "nombre"
    t.string "apellido"
    t.string "cedula"
    t.integer "id_rol"
    t.string "email"
    t.string "password"
    t.integer "activo"
    t.integer "puntos"
    t.integer "id_fundacion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
