package com.connectcloset.cc.common.aop;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.Signature;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

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

/*#11.2에서 처리한 작업을 대신 처리하는 어노테이션(@Component) + aop로 등록하겠다(@Aspect), pointcut과 advice가 있어야한다.*/
@Component
@Aspect
public class LoggerAspect {

	static final Logger logger = LoggerFactory.getLogger(LoggerAspect.class);
	
	@Pointcut("execution(* com.kh.spring.memo..*(..))")
	public void pointcut() {}
	
	//어드바이스의 인자는 메서드명 호출 코드로 작성
	@Around("pointcut()")
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
