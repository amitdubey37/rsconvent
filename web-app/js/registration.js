/**
 * Created by amit on 7/4/15.
 */
$().ready(function () {
    $("#signupForm").validate({
        rules: {
            firstName: {
                required: true
            },
            lastName: {
                required: true
            },
            email: {
                required: true,
                email: true
            },
            userName: {
                required: true

            },
            pass: {
                required: true,
                minlength: 5
            },
            pass_cnf: {
                required: true,
                minlength: 5,
                equalTo: "#pass"
            }

        },
        messages: {
            firstName: {
                required: "Please enter First Name"
            },
            lastName: {
                required: "Please enter Last Name"
            },
            email: {
                required: "Please enter email",
                email: "Enter valid email id"
            },
            userName:{
                required:"Please enter username"
            },
            pass:{
                required:"Please enter password",
                minlength:"Password length must be greater than 5"
            },
            pass_cnf:{
                required:"Please confirm password",
                minlength:"Password length must be greater than 5",
                equalTo:"Confirm password doesn't match"
            }
        },
        errorContainer: $('#errorContainer'),
        errorLabelContainer: $('#errorContainer ul'),
        wrapper: 'li'

    });
    $("#password_reset").validate({
        rules: {

            passwd: {
                required: true,
                minlength: 5
            },
            passwd_cnf: {
                required: true,
                minlength: 5,
                equalTo: "#passwd"
            }

        },
        messages: {
            pass:{
                required:"Please enter password",
                minlength:"Password length must be greater than 5"
            },
            pass_cnf:{
                required:"Please confirm password",
                minlength:"Password length must be greater than 5",
                equalTo:"Confirm password doesn't match"
            }
        },
        errorContainer: $('#errorContainer'),
        errorLabelContainer: $('#errorContainer ul'),
        wrapper: 'li'

    });
    $("#resetPassword").validate({
        rules: {

            user_name: {
                required: true,
                minlength: 3
            }

        },
        messages: {
            user_name:{
                required:"Please enter username",
                minlength:"username length must be greater than 3"
            }

        },
        errorContainer: $('#errorContainer'),
        errorLabelContainer: $('#errorContainer ul'),
        wrapper: 'li'

    });

});