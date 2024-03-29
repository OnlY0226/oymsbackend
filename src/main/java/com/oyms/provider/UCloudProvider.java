package com.oyms.provider;

import java.io.InputStream;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import cn.ucloud.ufile.UfileClient;
import cn.ucloud.ufile.api.object.ObjectConfig;
import cn.ucloud.ufile.auth.ObjectAuthorization;
import cn.ucloud.ufile.auth.UfileObjectLocalAuthorization;
import cn.ucloud.ufile.bean.PutObjectResultBean;
import cn.ucloud.ufile.exception.UfileClientException;
import cn.ucloud.ufile.exception.UfileServerException;

@Service
public class UCloudProvider {
	@Value("${ucloud.ufile.public-key}")
	private String publicKey;
	@Value("${ucloud.ufile.private-key}")
	private String privateKey;

	@Value("${ucloud.ufile.bucket-name}")
	private String bucketName;

	@Value("${ucloud.ufile.region}")
	private String region;

	@Value("${ucloud.ufile.suffix}")
	private String suffix;

	@Value("${ucloud.ufile.expires}")
	private Integer expires;

	public String upload(InputStream fileStream, String mimeType, String fileName) {
		String generatedFileName = null;
		String[] filePaths = fileName.split("\\.");
		if (filePaths.length > 1) {
			generatedFileName = UUID.randomUUID().toString() + "." + filePaths[filePaths.length - 1];
		} else {
		}
		try {
			ObjectAuthorization objectAuthorization = new UfileObjectLocalAuthorization(publicKey, privateKey);
			ObjectConfig config = new ObjectConfig(region, suffix);
			PutObjectResultBean response = UfileClient.object(objectAuthorization, config)
					.putObject(fileStream, mimeType).nameAs(generatedFileName).toBucket(bucketName)
					/**
					 * 是否上传校验MD5, Default = true
					 */
					// .withVerifyMd5(false)
					/**
					 * 指定progress callback的间隔, Default = 每秒回调
					 */
					// .withProgressConfig(ProgressConfig.callbackWithPercent(10))
					/**
					 * 配置进度监听
					 */
					.setOnProgressListener((bytesWritten, contentLength) -> {

					}).execute();
			if (response != null && response.getRetCode() == 0) {
				String url = UfileClient.object(objectAuthorization, config)
						.getDownloadUrlFromPrivateBucket(generatedFileName, bucketName, expires).createUrl();
				
				return url;
			} else {
			}
		} catch (UfileClientException e) {
			e.printStackTrace();
		} catch (UfileServerException e) {
			e.printStackTrace();
		}
		return null;
	}
}
