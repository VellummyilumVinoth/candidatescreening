import ballerinax/ai.openai;
import ballerinax/googleapis.calendar;
import ballerinax/googleapis.gmail;
import ballerinax/googleapis.sheets;

final openai:ModelProvider openaiModelprovider = check new (string `${openAiApiKey}`, "gpt-4o-mini");
final sheets:Client sheetsClient = check new ({auth: {clientId: googleClientId, clientSecret: googleClientSecret, refreshToken: googleRefreshToken, refreshUrl: sheets:REFRESH_URL}});
final calendar:Client calendarClient = check new ({auth: {clientId: googleClientId, clientSecret: googleClientSecret, refreshToken: googleRefreshToken, refreshUrl: calendarClientAuthRefreshUrl}});
final gmail:Client gmailClient = check new ({auth: {clientId: googleClientId, clientSecret: googleClientSecret, refreshToken: googleRefreshToken, refreshUrl: gmailClientAuthRefreshUrl}});
