class BatchesController < ApplicationController
  before_action :authenticate_user!

  def create

  end

  def list
    @batches = Array.new
    list = Hash.new
    single = Hash.new

    single[0] = {name: 'IRSHAD KHANCHEY JAVID 1',
                 gender: 'male',
                 position: 'PLUMBER',
                 birthday: '2015-03-06',
                 birthday_place: 'URBIZTONDO,PANGASINAN',
                 passport: 'EB7452244'}
    @batches[0] = single

    list[0] = {name: 'IRSHAD KHANCHEY JAVID 2',
               gender: 'male',
               position: 'PLUMBER',
               birthday: '2015-03-06',
               birthday_place: 'URBIZTONDO,PANGASINAN',
               passport: 'EB7452244'}
    list[1] = {name: 'AT3 HAFNIA PEGASUS',
               gender: 'female',
               position: 'Z1974745',
               birthday: '2015-03-06',
               birthday_place: 'URBIZTONDO,PANGASINAN',
               passport: 'EB7452244'}

    @batches[1] = list

    single = Hash.new
    single[0] = {name: 'IRSHAD KHANCHEY JAVID 3',
                 gender: 'male',
                 position: 'PLUMBER',
                 birthday: '2015-03-06',
                 birthday_place: 'URBIZTONDO,PANGASINAN',
                 passport: 'EB7452244'}
    @batches[2] = single

    single = Hash.new
    single[0] = {name: 'IRSHAD KHANCHEY JAVID 1',
                 gender: 'female',
                 position: 'PLUMBER',
                 birthday: '2015-03-06',
                 birthday_place: 'URBIZTONDO,PANGASINAN',
                 passport: 'EB7452244'}
    @batches[3] = single

    list = Hash.new
    list[0] = {name: 'IRSHAD KHANCHEY JAVID 2',
               gender: 'male',
               position: 'PLUMBER',
               birthday: '2015-03-06',
               birthday_place: 'URBIZTONDO,PANGASINAN',
               passport: 'EB7452244'}
    list[1] = {name: 'AT3 HAFNIA PEGASUS',
               gender: 'male',
               position: 'PLUMBER',
               birthday: '2015-03-06',
               birthday_place: 'URBIZTONDO,PANGASINAN',
               passport: 'EB7452244'}
    list[2] = {name: 'AT3 HAFNIA PEGASUS',
               id_card: 'male',
               position: 'PLUMBER',
               birthday: '2015-03-06',
               birthday_place: 'URBIZTONDO,PANGASINAN',
               passport: 'EB7452244'}
    list[3] = {name: 'AT3 HAFNIA PEGASUS',
               gender: 'male',
               position: 'PLUMBER',
               birthday: '2015-03-06',
               birthday_place: 'URBIZTONDO,PANGASINAN',
               passport: 'EB7452244'}
    @batches[4] = list
  end
end
