%dw 2.0
ns ns0 http://www.citect.com/Ampla/Security/2007/06
output application/json
---
{
	user: payload.body.ns0#CreateSessionResponse.Session.User,
	tokenValue: payload.body.ns0#CreateSessionResponse.Session.SessionID,
	startTime: now() >> "Australia/Brisbane",
	timeToLive: "PT15M"
}