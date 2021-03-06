[[!GoodNewsSubscription?
    &submittedResourceId=`[[!GoodNewsGetResourceID? &pagetitle=`GoodNews Registration Mail Sent`]]`
    &activationResourceId=`[[!GoodNewsGetResourceID? &pagetitle=`GoodNews Registration Confirm`]]`
    &activationEmailTpl=`sample.GoodNewsActivationRegEmailTpl`
    &activationEmailSubject=`Thank you for registering at [[++site_name]]`
    &sendSubscriptionEmail=`1`
    &unsubscribeResourceId=`[[!GoodNewsGetResourceID? &pagetitle=`GoodNews Unsubscribe`]]`
    &profileResourceId=`[[!GoodNewsGetResourceID? &pagetitle=`GoodNews Subscription Update`]]`
    &subscriptionEmailSubject=`Your subscription to our newsletter service at [[++site_name]] was successful!`
    &reSubscriptionEmailSubject=`Existing user profile or newsletter subscription found!`
    &reSubscriptionEmailTpl=`sample.GoodNewsReRegistrationEmailTpl`
    &usergroups=`10`
    &validate=`
        email:email:required,
        username:required,
        password:required:minLength=^8^,
        password_confirm:password_confirm=^password^,
        nospam:blank`
    &groupsOnly=`1`
]]
<!--
    Samples of other available configuration parameters:
    (Please read the documentation for a full list of parameters)
    
    &activation=`0`    
    &defaultGroups=`1`
    &includeGroups=`4,6`
    &defaultCategories=`3,36,40,48`
    &gongroups.vTextRequired=`Please choose at least one mailing group.`
    &goncategories.vTextRequired=`Please choose at least one category of your interest.`
-->

<div class="container">
    <div class="header">
        <h1>[[++site_name]]</h1>
    </div>
    <div class="main">
        <h2>Register for our website</h2>
        <form id="profileform" class="gon-form" action="[[~[[*id]]]]" method="post">
            <input type="hidden" name="nospam" value="[[!+nospam]]">
            [[!+error.message:notempty=`
                <p class="errorMsg">[[!+error.message]]</p>
            `]]
            <fieldset>
                <legend>Personal Data</legend>
                <p class="fieldbg[[!+error.email:notempty=` fielderror`]]">
                    <label for="email">
                        E-Mail Address
                        [[!+error.email]]
                    </label>
                    <input type="email" name="email" id="email" value="[[!+email]]" placeholder="Please enter your e-mail address" required>
                </p>
                <p class="fieldbg[[!+error.username:notempty=` fielderror`]]">
                    <label for="username">
                        Username
                        [[!+error.username]]
                    </label>
                    <input type="text" name="username" id="username" value="[[!+username]]" placeholder="Please enter a password" required>
                </p>
                <p class="fieldbg[[!+error.password:notempty=` fielderror`]]">
                    <label for="password">
                        Password
                        [[!+error.password]]
                    </label>
                    <input type="password" name="password" id="password" value="[[!+password]]" placeholder="Please enter a username" required>
                </p>
                <p class="fieldbg[[!+error.password_confirm:notempty=` fielderror`]]">
                    <label for="password_confirm">
                        Retype Password
                        [[!+error.password_confirm]]
                    </label>
                    <input type="password" name="password_confirm" id="password_confirm" value="[[!+password_confirm]]" placeholder="Please retype the password" required>
                </p>
                <p class="fieldbg[[!+error.fullname:notempty=` fielderror`]]">
                    <label for="fullname">
                        First and Last Name (optional)
                        [[!+error.fullname]]
                    </label>
                    <input type="text" name="fullname" id="fullname" value="[[!+fullname]]" placeholder="Please enter your first and last name">
                </p>
            </fieldset>
            [[!+fields_hidden:is=`1`:then=`[[!+grpcatfieldsets]]`:else=`
                <fieldset>
                    <legend>Newsletter</legend>
                    <p class="intro">
                        Do you want to sign up for our occasional newsletter and get news and updates 
                        delivered to your inbox? And don't worry, you can unsubscribe instantly 
                        or change your preferences at any time.
                    </p>
                    <p class="fieldbg">
                        <label class="singlelabel">
                            Please choose newsletter topics you are interested in (optional)
                            [[!+error.gongroups]]
                            [[!+error.goncategories]]
                        </label>
                        <input type="hidden" name="gongroups[]" value="">
                        <input type="hidden" name="goncategories[]" value="">
                    </p>
                    [[!+grpcatfieldsets]]
                </fieldset>
            `]]
            [[!+config_error:is=`1`:then=`
            <p class="errorMsg">
                Snippet configuration error: Please check your GoodNewsSubscription Snippet configuration!
            </p>
            `]]
            <p>
                <button type="submit" role="button" name="goodnews-subscription-btn" value="Subscribe" class="button green">Register now</button>
            </p>
        </form>
    </div>
    <div class="aside">
        <p><em>Please note: We respect your privacy and will never give your data to third 
        parties, nor would we ever spam you.</em></p>
    </div>
    <div class="footer">
        <p>&copy; Copyright [[++site_name]]</p>
    </div>
</div>
        