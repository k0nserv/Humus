Sequel.migration do
  change do
    alter_table(:cocoadocs_pod_metrics) do
      add_column :carthage_support, :boolean, :default => false
    end
  end
end
