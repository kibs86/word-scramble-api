# frozen_string_literal: true
# This file should contain all the record creation needed to experiment with
# your app during development.
#
# The data can then be loaded with the rake db:examples (or created alongside
# the db with db:nuke_pave).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# %w(antony jeff matt jason).each do |name|
#   email = "#{name}@#{name}.com"
#   next if User.exists? email: email
#   User.create!(email: email,
#                password: 'abc123',
#                password_confirmation: nil)
# end
Word.create([
              { word: 'grew',
                difficulty: 'easy',
                owner_id: 1 },
              { word: 'them',
                difficulty: 'easy',
                owner_id: 1 },
              { word: 'play',
                difficulty: 'easy',
                owner_id: 1 },
              { word: 'ruby',
                difficulty: 'easy',
                owner_id: 1 },
              { word: 'soil',
                difficulty: 'easy',
                owner_id: 1 },
              { word: 'oblong',
                difficulty: 'medium',
                owner_id: 1 },
              { word: 'amethyst',
                difficulty: 'medium',
                owner_id: 1 },
              { word: 'forage',
                difficulty: 'medium',
                owner_id: 1 },
              { word: 'edify',
                difficulty: 'medium',
                owner_id: 1 },
              { word: 'crown',
                difficulty: 'medium',
                owner_id: 1 },
              { word: 'circumflex',
                difficulty: 'hard',
                owner_id: 1 },
              { word: 'optimum',
                difficulty: 'hard',
                owner_id: 1 },
              { word: 'pedestrian',
                difficulty: 'hard',
                owner_id: 1 },
              { word: 'specialize',
                difficulty: 'hard',
                owner_id: 1 },
              { word: 'technology',
                difficulty: 'hard',
                owner_id: 1 }
            ])
