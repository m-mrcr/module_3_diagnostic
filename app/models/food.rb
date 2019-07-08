class Food

  attr_reader :name,
              :ndb_number,
              :group,
              :data_source,
              :manufacturer

  def initialize(attributes)
    @name = attributes[:name]
    @ndb_number = attributes[:ndbno]
    @group = attributes[:group]
    @data_source = attributes[:ds]
    @manufacturer = attributes[:manu]
  end

end
