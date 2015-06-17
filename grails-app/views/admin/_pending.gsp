<g:if test="${!user.approval}">
    <tr>
        <th>${user.username}</th>
        <th>${user.firstName}</th>
        <th>${user.lastName}</th>
        <th>${user.phone}</th>
        <th>${user.email}</th>
        <th><img src="${createLink(controller: 'home',action: 'dispPic',id: user.id)}" height="20" width="20"></th>
        <th><g:link controller="admin" action="userVer" id="${user.id}">Approve</g:link></th>
        <th><g:link controller="admin" action="userDel" id="${user.id}">Reject</g:link></th>
        <hr>
    </tr>
</g:if>