require 'test_helper'

class ZoneTest < ActiveSupport::TestCase
  def setup
    @nom = "Zone 1"
    @clima = "Clima 1"
    @temperatura = 0
    @humitat = 55
    @zone = Zone.new(nom: @nom, clima: @clima, temperatura: @temperatura, humitat: @humitat)
  end
  test "@zone should be valid" do
    assert @zone.valid?
  end
  test "temperatura should be presence" do
    @zone.temperatura = @temperatura
    assert_not @zone.invalid?
  end
  test "humitat should be presence" do
    @zone.humitat = @humitat
    assert_not @zone.invalid?
  end
  test "temperatura should great than or equal to" do
    @zone.temperatura >= @temperatura
    assert_not @zone.invalid?
  end
  test "temperatura should less than or equal to" do
    @zone.humitat <= @humitat
    assert_not @zone.invalid?
  end
end
