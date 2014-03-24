class AddContextToTags < ActiveRecord::Migration
	def self.up
		add_column :tags, :context, :string

		# ActsAsTaggableOn::Tag.find_each do |tag|
		# 	ActsAsTaggableOn::Tag.reset_counters(tag.id, :taggings)
		# end
	end

	def self.down
		remove_column :tags, :context
	end
end
