ActiveAdmin.register Syllabus do
  menu :label => "Syllabi"

  form multipart: true do |f|
    f.semantic_errors *f.object.errors.keys

    f.inputs "News Details" do
      f.input :title
      f.input :body, :as => :rich
      f.input :tag_list, :hint => 'Comma separated'
    end

    f.actions
  end

controller do
    def permitted_params
      params.permit syllabus: [:title, :body, :tag_list]
    end
  end
end
