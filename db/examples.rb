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
                creator: 'kladmin@kl.com' },
              { word: 'them',
                difficulty: 'easy',
                creator: 'kladmin@kl.com' },
              { word: 'play',
                difficulty: 'easy',
                creator: 'kladmin@kl.com' },
              { word: 'ruby',
                difficulty: 'easy',
                creator: 'kladmin@kl.com' },
              { word: 'soil',
                difficulty: 'easy',
                creator: 'kladmin@kl.com' },
              { word: 'oblong',
                difficulty: 'medium',
                creator: 'kladmin@kl.com' },
              { word: 'amethyst',
                difficulty: 'medium',
                creator: 'kladmin@kl.com' },
              { word: 'forage',
                difficulty: 'medium',
                creator: 'kladmin@kl.com' },
              { word: 'edify',
                difficulty: 'medium',
                creator: 'kladmin@kl.com' },
              { word: 'crown',
                difficulty: 'medium',
                creator: 'kladmin@kl.com' },
              { word: 'circumflex',
                difficulty: 'hard',
                creator: 'kladmin@kl.com' },
              { word: 'optimum',
                difficulty: 'hard',
                creator: 'kladmin@kl.com' },
              { word: 'pedestrian',
                difficulty: 'hard',
                creator: 'kladmin@kl.com' },
              { word: 'specialize',
                difficulty: 'hard',
                creator: 'kladmin@kl.com' },
              { word: 'technology',
                difficulty: 'hard',
                creator: 'kladmin@kl.com' }
            ])
