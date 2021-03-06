require "pp"

project = {
  committee: ["Stella", "Salma", "Kai"],
  title: "Very Important Project",
  due_date: "December 14, 2019",
  id: "3284",
  steps: [
    {description: "conduct interviews",
     due_date: "August 1, 2018"
    },
    {description: "code of conduct",
     due_date: "January 1, 2018"
    },
    {description: "compile results",
     due_date: "November 10, 2018"
    },
    {description: "version 1",
     due_date: "January 15, 2019"
    },
    {description: "revisions",
     due_date: "March 30, 2019"
    },
    {description: "version 2",
     due_date: "July 12, 2019"
    },
    {description: "final edit",
     due_date: "October 1, 2019"
    },
    {description: "final version",
     due_date: "November 20, 2019"
    },
    {description: "Wrap up",
     due_date: "December 1, 2019"
    }
  ]
}
# go through each element of the array found at the key :steps
# each element of this array is a hash itslef
project[:steps].each do |step|
  # into each of these hashes we will assign a new key/value pair
  # where they value is an element of the array found at the key :committee
  # in the overall hash (project)
  step[:owner] = project[:committee].first
  project[:committee].rotate!
end

# just want to output to see if it works
pp project
# it works!!


#what follows is how I originally did it.  Sean showed me some awesome
# tricks with using .first and .rotate methods.  Thanks Sean!
# delegate_to = 0  #this is a simple indexer that will allow me to
# # =>              control who gets the project
#
# # go through each element of the array found at the key :steps
# # each element of this array is a hash itslef
# # delegated_project = project[:steps].each do |step|
# project[:steps].each do |step|
#   # into each of these hashes we will assign a new key/value pair
#   # where they key is an element of the array found at the key :committee
#   # in the overall hash (project)
#   step[:owner] = project[:committee][delegate_to]
#   if delegate_to == 2
#     delegate_to = 0  #reset the indexer after giving Kai a project
#   else
#     delegate_to += 1
#   end
# end
#
