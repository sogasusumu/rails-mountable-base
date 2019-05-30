# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# master_one
master_one = {
    master_one_lgs: {
        name: 'master_one_lg',
        master_one_mds: [
            {
                name: 'master_one_md_one',
                master_one_sms: [
                    {
                        name: 'master_one_sm_one'
                    }
                ]
            }
        ]
    }
}

ActiveRecord::Base.transaction do
  master_one.each do |k, v|
    lg = k.to_s.classify.constantize.create!(name: v[:name])
    v[:master_one_mds].each do |md_hsh|
      md = lg.master_one_mds.create!(name: md_hsh[:name])
      md_hsh[:master_one_sms].each do |sm_hsh|
        md.master_one_sms.create!(name: sm_hsh[:name])
      end
    end
  end
end
