# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150827124359) do

  create_table "Content", primary_key: "ID", force: :cascade do |t|
    t.integer "已采",      limit: 1,     default: 0
    t.integer "已发",      limit: 1,     default: 0
    t.text    "标题",      limit: 65535
    t.text    "公司",      limit: 65535
    t.text    "网址",      limit: 65535
    t.text    "简介",      limit: 65535
    t.text    "时间",      limit: 65535
    t.text    "状态",      limit: 65535
    t.text    "阶段",      limit: 65535
    t.text    "行业",      limit: 65535
    t.text    "子行业",     limit: 65535
    t.text    "获投状态",    limit: 65535
    t.text    "PageUrl", limit: 65535
  end

  create_table "DownloadFile", primary_key: "Id", force: :cascade do |t|
    t.string  "PreUrl",     limit: 1000
    t.string  "TrueUrl",    limit: 1000
    t.string  "SaveUrl",    limit: 1000
    t.string  "ReplaceUrl", limit: 1000
    t.integer "Status",     limit: 1,    default: 0
    t.integer "Upload",     limit: 1,    default: 0
    t.string  "Type",       limit: 100
    t.string  "PageUrl",    limit: 1000
    t.integer "ContentId",  limit: 4
  end

  create_table "companies", force: :cascade do |t|
    t.integer  "company_id",     limit: 4
    t.string   "name",           limit: 255
    t.text     "desc",           limit: 65535
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.string   "short",          limit: 255
    t.string   "url",            limit: 255
    t.string   "type",           limit: 255
    t.string   "type_name",      limit: 255
    t.string   "industry_field", limit: 255
    t.string   "city",           limit: 255
  end

  create_table "exported_companies", force: :cascade do |t|
    t.integer "company_id", limit: 4
  end

end
