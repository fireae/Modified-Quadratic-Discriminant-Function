      SUBROUTINE WGTIN4(FILT,K1,K2,ILL)
CS    CALL WGTIN4(FILT,K1,K2,ILL)
CP***   DAINI HYOUHONKA NO OMOMI KANSUU    ***
CA    FILT(5,5):OMOMI KANSUU
CA    K1:OMOMI KANSUU NO OOKISA(=5)
CA    K2:OMOMI KANSUU NO OOKISA(=5)
CA    ILL:0=NORMAL END,1000=K1,K2 ERROR
CK    FILTER
CD    CODED BY S.TSURUOKA          85.06.24
      REAL FILT(5,5),D(5,5)
C
      DATA D/.0,.0092,.0169,.0092,.0,.0092,.0573,.1054,.0573,.0092,
     @.0169,.1054,.1939,.1054,.0169,.0092,.0573,.1054,.0573,.0092,
     @.0,.0092,.0169,.0092,.0/
C------
      ILL=0
      IF (K1.EQ.5.AND.K2.EQ.5) THEN
          DO 100 I=1,5
              DO 200 J=1,5
                  FILT(I,J)=D(I,J)
  200         CONTINUE
  100     CONTINUE
      ELSE
          ILL=1000
      ENDIF
      RETURN
      END