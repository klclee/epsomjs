assert = require 'assert'
require 'should'
require "shelljs/global"
fs = require 'fs'
execSync = require 'execSync'
path = require 'path'


bin_path = path.resolve(__dirname, '..', 'bin/epsom')
proj_name= 'temp'
temp_path = "#{__dirname}/#{proj_name}"

describe 'When calling epsom from the current directory', ->
  beforeEach ->
    res = execSync.exec "#{bin_path} #{temp_path}"
    res.code.should.equal 0

  afterEach ->
    rm '-fr', temp_path

  it 'should create the expected files', ->
    res =  ls temp_path
    res.join('').should.equal [ 'assets','config','Gruntfile.coffee','package.json','server.js','src' ].join('')

  it 'should have no empty package.json', ->
    file_st = fs.readFileSync "#{temp_path}/package.json", 'utf8'
    try
      JSON.parse(file_st)
      true.should.be.ok
    catch error
      false.should.be.ok     #forcing the test to fail when file_st dont parse as JSON

  it 'project name should be the same as the project dir', ->
    pkg = require "#{temp_path}/package.json"
    pkg.name.should.equal proj_name

  it 'development database name should be proj_development', ->
    db = require "#{temp_path}/config/database.json"
    db.development.databaseName.should.equal "#{proj_name}_development"