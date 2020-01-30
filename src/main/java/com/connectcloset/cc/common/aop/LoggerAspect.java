package com.connectcloset.cc.common.aop;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.Signature;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 
 * Aspect = Pointcut + Advice
 * 
 * Advice는 Joinpoint와 결합하여 동작하는 시점에 따라 5개로 구분된다.
 * (joinpoint는 메서드와 비슷한 개념으로 이해)
 * 1. Before Advice : Joinpoint 전에 실행
 * 2. Around Advice : Joinpoint 앞과 뒤에서 실행
 * 3. After Returning Advice : Joinpoint 메소드가 리턴될시 실행. Return된 object에 접근가능
 * 4. After Advice : Joinpoint후에 무조건 실행됨(예외발생시에도 실행. finally와 유사함.)
 * 5. After Throwing Advice : Jointpoint 메소드 실행중 예외발생시 실행
 *
 */

public class LoggerAspect {

	static final Logger logger = LoggerFactory.getLogger(LoggerAspect.class);
	
	public Object loggerAdvice(ProceedingJoinPoint joinPoint) throws Throwable{
		Signature signature = joinPoint.getSignature();//joinPoint의 메서드를 의미
		String type=signature.getDeclaringTypeName();
		String methodName=signature.getName();
		
		//joinPoint 전에 실행
		logger.debug("[Before]{}.{}",type,methodName);
		
		//joinPoint 실행
		Object obj = joinPoint.proceed();
		
		//joinPoint 후에 실행
		logger.debug("[After]{}.{}",type,methodName);
		
		
		return obj;
	}

}
