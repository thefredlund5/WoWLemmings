<cfcomponent output="false" extends="com.blizzard.request.AbstractRequest" implements="com.blizzard.interface.IBnetRequest">

	<cffunction name="init" returntype="QuestInfoRequest" access="public" output="false">

		<cfset setEndpoint('/api/wow/quest') />

		<cfreturn super.init(argumentCollection=arguments) />
	</cffunction>

	<cffunction name="resetResponse" returntype="void" access="public" output="false">
	
		<cfset var result = getResultStruct('quest') />
		
		<cfset setResponse(result) />
	</cffunction>
	
	<cffunction name="setResponseData" returntype="void" access="public" output="false">
		<cfargument name="data" type="any" required="true" />

		<cfset setResponseKey('quest', arguments.data) />	
	</cffunction>

	<cffunction name="getResponseData" returntype="struct" access="public" output="false">

		<cfreturn getResponseKey('quest') />
	</cffunction>
	
</cfcomponent>