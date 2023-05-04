<div class='content-wrapper' id='user-registration'>
    <h1>Registration</h1>
    <form autocomplete='off'>
        <input class='anticomplete' type='text' name='fakeuser'/>
        <input class='anticomplete' type='password' name='fakepass'/>

        <ul class='input'>
            <li>
                <%= ctx.makeTextInput({
                    text: 'User name',
                    name: 'name',
                    placeholder: 'letters, digits, _, -',
                    required: true,
                    pattern: ctx.userNamePattern,
                }) %>
            </li>
            <li>
                <%= ctx.makePasswordInput({
                    text: 'Password',
                    name: 'password',
                    placeholder: '5+ characters',
                    required: true,
                    pattern: ctx.passwordPattern,
                }) %>
            </li>
            <li>
                <%= ctx.makeMcnameInput({
                    text: 'Minecraft Username',
                    name: 'mcname',
                    placeholder: 'optional',
                }) %>
            </li>
        </ul>

        <div class='messages'></div>
        <div class='buttons'>
            <input type='submit' value='Create an account'/>
        </div>
    </form>

    <div class='info'>
        <p>Registered users can:</p>
        <ul>
            <li><i class='fa fa-upload'></i> upload new posts</li>
            <li><i class='fa fa-heart'></i> mark them as favorite</li>
            <li><i class='fa fa-commenting-o'></i> add comments</li>
            <li><i class='fa fa-star-half-o'></i> vote up/down on posts and comments</li>
        </ul>
        <hr/>
        <p>By creating an account, you are agreeing to the <a href='<%- ctx.formatClientLink('help', 'tos') %>'>Terms of Service</a>.</p>
    </div>
</div>
