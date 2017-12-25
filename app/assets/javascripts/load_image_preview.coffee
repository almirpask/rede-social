$(document).on "turbolinks:load", ->
    console.log("1")
    readURL = (input) ->
        console.log("2")
        if input.files and input.files[0]
            console.log("3")
            reader = new FileReader

            reader.onload = (e) ->
                $("#image_upload_preview").attr "src", e.target.result
                return
            reader.readAsDataURL input.files[0]
        return

    $("#user_avatar").on 'change', ->
        readURL this
        return false